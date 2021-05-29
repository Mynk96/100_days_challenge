import 'package:flutter/material.dart';
import 'package:hundred_days/ui/challenge_view.dart';

class ScaffoldChallengeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        title: Text('Challenge View'),
      ),
      body: ChallengeView(challenge:args['challenge'],),
    );
  }
  
}