import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hundred_days/core/providers/providers.dart';
import 'package:hundred_days/model/ladder.dart';
import 'package:hundred_days/ui/loading.dart';

class LadderView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, watch) {
    final ladderState = watch(ladderProvider);
    return ladderState.when(
      data: (data) => _ladderListView(data),
      loading: () => Loading(),
      error: (err, st) => Text('Error Occurred'),
    );
  }

  Widget _ladderListView(List<Ladder> data) {
    return ListView.separated(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return LadderTitleList(title: data[index].title, challengeIds: data[index].challengeIds, ladderId: data[index].id,);
        },
        separatorBuilder: (context, index) {
          return SizedBox(height: 10,);
        },
      );
  }
}

class LadderTitleList extends StatelessWidget {
  const LadderTitleList({
    Key? key,
    required this.title,
    required this.challengeIds,
    required this.ladderId
  }) : super(key: key);

  final String title;
  final List<String> challengeIds;
  final String ladderId;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return GestureDetector(
          onTap: () {
            context.read(currentAppState).ladderId = ladderId;
            context.read(challengesProvider.notifier).getChallenges(challengeIds);
            Navigator.pushNamed(context, 'challengelist', arguments: <String, String>{'ladderId': ladderId});
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
                Text(title, style: TextStyle(fontSize: 32),),
                Icon(Icons.chevron_right_outlined)
              ],
            ),
          ),
        ),
      ),
    );
  }
}