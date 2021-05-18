import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hundred_days/core/providers/providers.dart';
import 'package:hundred_days/ui/challenge_list.dart';
import 'package:hundred_days/ui/challenge_view.dart';

class MyHomePage extends ConsumerWidget {

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final screenState = watch(screenProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text("Today's Challenge"),
      ),
      body: getCurrentScreen(screenState.state),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.pages_outlined), label: "Today's Challenge"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Previous Challenges")
        ],
        onTap: (value) {
          context.read(screenProvider).state = value;
        },
        currentIndex: context.read(screenProvider).state,
      ),
    );
  }

  Widget getCurrentScreen(int index) {
    return IndexedStack(
      index: index,
      children: [
        ChallengeView(),
        ChallengesList()
      ],
    );
  }
}
