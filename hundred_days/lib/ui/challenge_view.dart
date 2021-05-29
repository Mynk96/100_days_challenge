import 'package:flutter/material.dart';
import 'package:hundred_days/model/challenge.dart';
import 'package:hundred_days/ui/show_challenge.dart';

class ChallengeView extends StatefulWidget {
  final Challenge challenge;

  ChallengeView({required this.challenge});

  @override
  State<StatefulWidget> createState() {
    return _ChallengeViewState();
  }
}

class _ChallengeViewState extends State<ChallengeView> {
  @override
  Widget build(BuildContext context) {
    return ShowChallenge(challenge: widget.challenge,);
  }
}
