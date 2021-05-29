import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hundred_days/core/repository/ladder_repository.dart';
import 'package:hundred_days/core/repository/user_repository.dart';
import 'package:hundred_days/model/ladder.dart';
import 'package:hundred_days/model/ladder_info.dart';
import 'package:hundred_days/model/usermodel.dart';

abstract class AuthenticationState {
  
}

class AuthenticationLoading extends AuthenticationState {

}

class AuthenticationException extends AuthenticationState {
  AuthenticationException(this.message);
  final String? message;
}

class Authenticated extends AuthenticationState {
  UserModel user;
  Authenticated(this.user);
}

class UnAuthenticated extends AuthenticationState {
  
}

class AuthenticationNotifier extends StateNotifier<AuthenticationState> {
  final UserRepository _userRepository;
  final LadderRepository _ladderRepository;
  UserModel? user;
  AuthenticationNotifier(this._userRepository, this._ladderRepository) : super(UnAuthenticated()) {
    _userRepository.subscribeToAuthChanges(_onAuthStateChange);
  }

  Future<void> signInWithGoogle() async {
    try {
      state = AuthenticationLoading();
      await _userRepository.signInWithGoogle();
    } catch (e, trace) {
      state = AuthenticationException(trace.toString());
    }
  }

  Future<void> _onAuthStateChange(User? firebaseUser) async {
    if (firebaseUser == null) {
      user = null;
      state = UnAuthenticated();
    } else {
      _userRepository.subscribeToUserChanges(firebaseUser.uid, (q) {
          user = UserModel.fromJson(q.data() as Map<String, dynamic>);
          state = Authenticated(user!);
        });
      if (! (await _userRepository.isUserAlreadyPresent(firebaseUser.uid))) {
        Map<String, dynamic> ladderDict = await _getInitialLadderInfo();
        Map<String, dynamic> toUpdate = {
        'email': firebaseUser.email,
        'name': firebaseUser.displayName,
        'uid':firebaseUser.uid,
        'laddersState': ladderDict
      };
        await _userRepository.setUserDetails(firebaseUser.uid, toUpdate);
      }
      DocumentSnapshot q = await _userRepository.getUserDetails(firebaseUser.uid);
      user = UserModel.fromJson(q.data() as Map<String, dynamic>);
      
      state = Authenticated(user!);
    }
  }

  Future<void> signOut() async {
    state = AuthenticationLoading();
    await _userRepository.signOut();
    state = UnAuthenticated();
  }

  Future<Map<String, dynamic>> _getInitialLadderInfo() async {
    Map<String, dynamic> laddersMap = new Map<String, dynamic>();
    List<QueryDocumentSnapshot<Object?>> data = await _ladderRepository.getLadders();
    List<Ladder> ladders = List.empty(growable:true);
    data.forEach((element) {
        ladders.add(Ladder.fromJson(element.data() as Map<String, dynamic>));
    });
    ladders.forEach((element) {
      laddersMap[element.id] = new LadderInfo(ladderId: element.id, currentChallenge: element.challengeIds.first).toJson();
    });
    return laddersMap;
  }
}