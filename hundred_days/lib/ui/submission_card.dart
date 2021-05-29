import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hundred_days/core/providers/providers.dart';
import 'package:hundred_days/model/submission.dart';
import 'package:social_share/social_share.dart';
import 'package:throttling/throttling.dart';
import 'package:timeago/timeago.dart' as timeago;

class SubmissionCard extends StatefulWidget {
  SubmissionCard(this.submission);
  final Submission submission;

  @override
  _SubmissionCardState createState() => _SubmissionCardState();
}

class _SubmissionCardState extends State<SubmissionCard> {
  bool isAdded=false;
  late Debouncing thr;
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Card(
        margin: EdgeInsets.all(10),
        elevation: 10,
        child: Column(
          children: [
            CachedNetworkImage(
              imageUrl: widget.submission.url,
              height: 260,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 10, 10, 0),
              //color: Colors.orange,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${widget.submission.challengeName}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.left),
                  Flex(
                    direction: Axis.horizontal,
                    children: [
                      Expanded(
                          flex: 6,
                          child: Text('${widget.submission.submittedByName}',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.left)),
                      Consumer(
                            builder: (context, watch, child) {
                            final a = watch(userProvider);
                            final user = watch(userProvider.notifier).user;
                            return Expanded(
                            flex: 1,
                            child: IconButton(
                              icon: (user != null && widget.submission.likedBy.contains(user.uid)) ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
                              onPressed: () {
                                setState(() {
                                  if (widget.submission.likedBy.contains(user!.uid)) {
                                    widget.submission.likedBy.remove(user.uid);
                                    isAdded = false;
                                  } else {
                                    widget.submission.likedBy.add(user.uid);
                                    isAdded = true;
                                  }
                                });
                                thr.debounce(() {
                                  if (isAdded) {
                                    context.read(showCaseProvider).likeSubmission(user!.uid, widget.submission.id);
                                  } else {
                                    context.read(showCaseProvider).disLikeSubmission(user!.uid, widget.submission.id);
                                  }
                                });
                              },
                              color: Colors.pink,
                            ));
                            },
                            
                      ),
                          Expanded(
                          flex: 1,
                          child: IconButton(
                              icon: Icon(Icons.ios_share),
                              onPressed: () {
                                SocialShare.shareTwitter(
                              "Checkout my submission in 100 days challenge app!",
                              hashtags: ["100dayschallenge"],url:widget.submission.url);
                              }))
                    ],
                  ),
                  Text(
                    timeago.format(widget.submission.submittedAt.toDate()),
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        )),
    );
  }

  @override
  void initState() {
    super.initState();
    thr = Debouncing(duration: const Duration(seconds: 10));
  }

  @override
  void dispose() {
    super.dispose();
    thr.close();
  }
}