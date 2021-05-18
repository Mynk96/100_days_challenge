import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hundred_days/core/providers/authentication_notifier.dart';
import 'package:hundred_days/core/providers/challenge_notifier.dart';
import 'package:hundred_days/core/providers/providers.dart';
import 'package:hundred_days/core/providers/storage_notifier.dart';
import 'package:hundred_days/model/challenge.dart';
import 'package:hundred_days/model/submission.dart';
import 'package:image_picker/image_picker.dart';

class ChallengeView extends ConsumerWidget {
  final int? challengeId;

  ChallengeView({this.challengeId});

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final challengeState = watch(challengeProvider);
    final screensize = MediaQuery.of(context).size;
    if (challengeState is ChallengesLoading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else if (challengeState is ChallengeLoaded) {
      Challenge todayChallenge = (challengeId != null)
          ? challengeState.getChallengeById(challengeId)
          : challengeState.getTodayChallenge();
      return Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: ShowChallenge(
          screensize: screensize,
          title: todayChallenge.title,
          description: todayChallenge.description,
          resourceUrl: todayChallenge.resourceUrl,
          challengeId: todayChallenge.id,
        ),
      );
    } else {
      return Container(
        child: Text('Exception'),
      );
    }
  }
}

class ShowChallenge extends StatelessWidget {
  ShowChallenge(
      {Key? key,
      required this.screensize,
      required this.title,
      required this.description,
      required this.resourceUrl,
      required this.challengeId})
      : super(key: key);

  final Size screensize;
  final String? title;
  final String? description;
  final String? resourceUrl;
  final int? challengeId;
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            child: CachedNetworkImage(
              imageUrl: resourceUrl!,
              placeholder: (context, url) => new Center(child:CircularProgressIndicator()),
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
                  title!,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ))),
        SizedBox(
          height: 15,
        ),
        Expanded(
            flex: 5, child: SingleChildScrollView(child: Text(description!))),
        Expanded(
            flex: 1,
            child: Container(
                width: screensize.width,
                child: Consumer(builder: (context, watch, child) {
                  final submState = watch(submissionProvider);
                  final filep = watch(fileProvider);
                  if (filep is FileUploading) {
                    return Center(child:CircularProgressIndicator());
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
                            context
                          .read(fileProvider.notifier)
                          .uploadFile(challengeId, context.read(userProvider.notifier).user!.email, File(image.path));
                          }
                    },
                    child: submState.when(
                      data: (data) => getText(data, challengeId),
                      loading: () => Center(child:CircularProgressIndicator()),
                      error: (err, stack) => Text('Error while uploading. Please try again!')),
                  );
                  }
                })))
      ],
    );
  }

  Widget getText(List<Submission> data, int? challengeId) {
    bool isSubmissionDone = false;
    data.forEach((element) {
      if (element.challengeId == challengeId) {
        isSubmissionDone = true;
        return;
      }
    });
    if (isSubmissionDone)
      return Text('Design Submitted');
    return Text('Submit Design for this challenge');
  }
}
