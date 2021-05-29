import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:hundred_days/core/providers/authentication_notifier.dart';
import 'package:hundred_days/core/providers/providers.dart';

class ProfileView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, watch) {
    final user = watch(userProvider);
    if (user is UnAuthenticated) {
      return Center(
        child: ElevatedButton(
          child: Text('Sign In with google'),
          onPressed: () {
            context.read(userProvider.notifier).signInWithGoogle();
          },
        )
      );
    } else if (user is Authenticated) {
      return Center(child: Text('Signed In users'),);
    }
    return Center(child: Text('Authenticating user'),);
  }
  
}