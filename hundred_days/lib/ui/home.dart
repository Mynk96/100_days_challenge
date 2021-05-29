import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hundred_days/core/providers/providers.dart';
import 'package:hundred_days/ui/daily_challenge_view.dart';
import 'package:hundred_days/ui/ladder_view.dart';
import 'package:hundred_days/ui/profile_view.dart';
import 'package:hundred_days/ui/showcase_view.dart';

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
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.format_list_bulleted), label: "News Feed"),
          BottomNavigationBarItem(icon: Icon(Icons.pages_outlined), label: "Daily"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Challenges"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_sharp), label: "Profile")
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
        ShowCase(),
        DailyChallengeView(),
        LadderView(),
        ProfileView(),
      ],
    );
  }
}
