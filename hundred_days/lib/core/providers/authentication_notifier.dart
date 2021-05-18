import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hundred_days/core/repository/user_repository.dart';
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
  UserModel? user;
  Authenticated(this.user);
}

class UnAuthenticated extends AuthenticationState {
  
}

class AuthenticationNotifier extends StateNotifier<AuthenticationState> {
  final UserRepository _userRepository;
  UserModel? user;
  AuthenticationNotifier(this._userRepository) : super(UnAuthenticated()) {
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
    } else {
      user = UserModel.fromJson({
        'email': firebaseUser.email,
        'name': firebaseUser.displayName,
        'uid':firebaseUser.uid
      });
      await _userRepository.saveUserRecord(firebaseUser.uid, user);
      state = Authenticated(user);
    }
  }

  Future<void> signOut() async {
    state = AuthenticationLoading();
    await _userRepository.signOut();
    state = UnAuthenticated();
  }
}