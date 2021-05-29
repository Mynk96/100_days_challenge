import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hundred_days/core/providers/providers.dart';
import 'package:hundred_days/model/challenge.dart';
import 'package:hundred_days/model/ladder_info.dart';
import 'package:hundred_days/ui/loading.dart';

class ChallengesList extends ConsumerWidget {

  @override
  Widget build(BuildContext context, watch) {
    final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final challengeState = watch(challengesProvider);
    final user = watch(userProvider.notifier).user;
    // to watch authentication state
    final userWatch = watch(userProvider);
    
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text('Ladder Name')
        ),
        body: challengeState.when(
        data: (data) {
          int indexTillUnlock = (user!= null) ? int.parse(_getCompletedIndexOfLastChallengeInList(user.laddersState!, args['ladderId'], data)) : -1;
          return ListView.separated(
          itemCount: data.length,
          itemBuilder: (context, index) {
            String nextChallengeId = (index != data.length-1) ? data[index+1].id : "-1";
            return ChallengeTitleList(screenSize: screenSize, title: data[index].title, challenge: data[index], isCompleted: (indexTillUnlock >= int.parse(data[index].id)), nextChallengeId: nextChallengeId);
          },
          separatorBuilder: (context, index) {
            return SizedBox(height: 10,);
          },
        );},
        loading: () => Loading(),
        error: (e, st) => Text('Error occured')
      ),
    );
  }

  String _getCompletedIndexOfLastChallengeInList(Map<String, LadderInfo> laddersState, String ladderId, List<Challenge> challenges) {
    return challenges.firstWhere((element) => element.id == laddersState[ladderId]!.currentChallenge).id;
  }
}

class ChallengeTitleList extends StatelessWidget {
  const ChallengeTitleList({
    Key? key,
    required this.screenSize,
    required this.title,
    required this.challenge,
    required this.isCompleted,
    required this.nextChallengeId
  }) : super(key: key);

  final Size screenSize;
  final String title;
  final Challenge challenge;
  final bool isCompleted;
  final String nextChallengeId;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap: () {
            if (isCompleted) {
              context.read(currentAppState).challengeId = challenge.id;
              context.read(currentAppState).nextChallengeId = nextChallengeId;
              Navigator.pushNamed(context, 'challenge', arguments: <String, dynamic>{'challenge': challenge});
          } else {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Please complete previous challenges'),));
          }
          },
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
                Text(title, style: TextStyle(fontSize: 28),),
                (isCompleted) ? Icon(Icons.lock_open) : Icon(Icons.lock)
              ],
            ),
          ),
        ),
      ),
    );
  }
}