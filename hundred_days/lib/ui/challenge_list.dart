import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hundred_days/core/providers/challenge_notifier.dart';
import 'package:hundred_days/core/providers/providers.dart';

class ChallengesList extends ConsumerWidget {
  @override
  Widget build(Object context, watch) {
    final challengeState = watch(challengeProvider);
    final Size screenSize = MediaQuery.of(context as BuildContext).size;
    if (challengeState is ChallengeLoaded) {
      return ListView.separated(
        itemCount: challengeState.challenges.length,
        itemBuilder: (context, index) {
          return ChallengeTitleList(screenSize: screenSize, title: challengeState.challenges[index].title, challengeId: challengeState.challenges[index].id,);
        },
        separatorBuilder: (context, index) {
          return SizedBox(height: 10,);
        },
      );
    } else if (challengeState is ChallengesLoading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return Center(child: Text('Error'),);
    }
  }
}

class ChallengeTitleList extends StatelessWidget {
  const ChallengeTitleList({
    Key? key,
    required this.screenSize,
    required this.title,
    required this.challengeId,
  }) : super(key: key);

  final Size screenSize;
  final String? title;
  final int? challengeId;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap: () => Navigator.pushNamed(context, 'challenge', arguments: <String, int?>{'challengeId': challengeId}),
          child: Container(
        width: screenSize.width,
        height: 100,
        child: Card(
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title!, style: TextStyle(fontSize: 32),),
                Icon(Icons.chevron_right_outlined)
              ],
            ),
          ),
        ),
      ),
    );
  }
}