import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hundred_days/model/usermodel.dart';

class UserRepository {

  final CollectionReference userDbs = FirebaseFirestore.instance.collection('users');
  UserRepository.instance()
      : _auth = FirebaseAuth.instance,
        _googleSignIn = GoogleSignIn(scopes: ['email']) {
  }

  FirebaseAuth _auth;
  GoogleSignIn _googleSignIn;
  UserModel? user;

  Future<bool> signInWithGoogle() async {
    try {
      final GoogleSignInAccount googleUser = await (_googleSignIn.signIn() as FutureOr<GoogleSignInAccount>);
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final GoogleAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      ) as GoogleAuthCredential;
      await _auth.signInWithCredential(credential);
      return true;
    } catch (e) {
      return false;
    }
  }

  void subscribeToAuthChanges(Function callback) {
    _auth.authStateChanges().listen(callback as void Function(User?));
  }

  Future signOut() async {
    _auth.signOut();
    _googleSignIn.signOut();
    return Future.delayed(Duration.zero);
  }

  Future<void> saveUserRecord(String uid, UserModel? user) async {
    try {
      if (user == null) return;
    DocumentSnapshot doc = await userDbs.doc(uid).get();
    if (doc.data() == null) {
      userDbs.doc(uid).set({
        'email': user.email,
        'name': user.name,
        'uid': uid
      });
    }
    } catch (e, message) {
      print(message);
    }
  }

  Future<void> saveSubmission(String? uid, int? challengeId, String submissionUrl) async {
    try {
      await userDbs.doc(uid).collection('submissions').doc(challengeId.toString()).set({
      'submissionUrl': submissionUrl,
      'challengeId':challengeId
    });
    } catch (e) {
      throw e;
    }
  }

  Future<QuerySnapshot> getAllSubmissions(String? uid) async {
    try {
      return await userDbs.doc(uid).collection('submissions').get();
    } catch (e) {
      throw e;
    }
  }
}