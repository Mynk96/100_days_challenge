import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hundred_days/core/providers/authentication_notifier.dart';
import 'package:hundred_days/core/providers/providers.dart';
import 'package:hundred_days/model/challenge.dart';
import 'package:hundred_days/model/file_upload_param.dart';
import 'package:hundred_days/model/file_upload_status.dart';
import 'package:image_picker/image_picker.dart';

class ShowChallenge extends StatelessWidget {
  ShowChallenge({Key? key, required this.challenge})
      : super(key: key);
  final Challenge challenge;
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Flex(
        direction: Axis.vertical,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              child: CachedNetworkImage(
            imageUrl: challenge.resourceUrl[0],
            placeholder: (context, url) =>
                new Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => new Icon(Icons.error),
          )),
          SizedBox(
            height: 15,
          ),
          Expanded(
              flex: 1,
              child: Container(
                  height: 40,
                  child: Text(
                    challenge.title,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ))),
          SizedBox(
            height: 15,
          ),
          Expanded(
              flex: 5,
              child: SingleChildScrollView(child: Text(challenge.description))),
          Expanded(
              flex: 1,
              child: Container(
                  width: screensize.width,
                  child: Consumer(builder: (context, watch, child) {
                    final submState = watch(submissionProvider);
                    final user = watch(userProvider.notifier).user;
                    if (user != null && user.participatedChallenges != null && user.participatedChallenges!.contains(challenge.id)) {
                      return Container(height:40, padding: EdgeInsets.only(top:10), child: Text('Design Submitted', textAlign: TextAlign.center,), color: Colors.grey,);
                    } else {
                    return ElevatedButton(
                      onPressed: () async {
                        final state = context.read(userProvider);
                        if (state is UnAuthenticated) {
                          await context
                              .read(userProvider.notifier)
                              .signInWithGoogle();
                        }
                        PickedFile? image =
                            (await _picker.getImage(source: ImageSource.gallery));
                        if (image != null) {
                          final user = context.read(userProvider.notifier).user;
                          final currentstate = context.read(currentAppState);
                          final ladderInfo = (currentstate.nextChallengeId.compareTo("-1") == 0) && challenge.isDailyChallenge
                            ? user!.laddersState![currentstate.ladderId]
                            : user!.laddersState![currentstate.ladderId]!.copyWith(currentChallenge: currentstate.nextChallengeId);
                          FileUploadParameter params = new FileUploadParameter(
                              uid: user.uid,
                              challengeId: challenge.id,
                              email: user.email,
                              image: File(image.path),
                              isPublic: challenge.isPublic,
                              ladderInfo: ladderInfo!,
                              name: user.name,
                              challengeName: challenge.title);
                          context
                              .read(submissionProvider.notifier)
                              .submit(params);
                        }
                      },
                      child: getText(submState),
                    );
                  }})))
        ],
      ),
    );
  }

  Widget getText(FileUploadStatus status) {
    switch (status) {
      case FileUploadStatus.UPLOADING:
        return Center(child: CircularProgressIndicator(backgroundColor: Colors.red,));
      case FileUploadStatus.ERROR:
        return Text('Error while uploading design');
      case FileUploadStatus.INITIAL:
        return Text('Submit Design');
      default:
        return Text('Submit Design');
    }
  }
}
