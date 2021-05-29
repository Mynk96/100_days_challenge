import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hundred_days/core/providers/providers.dart';
import 'package:hundred_days/ui/show_challenge.dart';

class DailyChallengeView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, watch) {
    final dailyChallenge = watch(dailyChallengeProvider);
    return dailyChallenge.when(
        data: (data) => ShowChallenge(challenge: data,),
        loading: () => Center(child:CircularProgressIndicator()),
        error: (e, st) => Center(child: Text('Error while fetching daily challenge' + e.toString())),
      );
  }
  
}