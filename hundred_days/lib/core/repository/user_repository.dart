import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hundred_days/model/usermodel.dart';

class UserRepository {

  final CollectionReference userDb = FirebaseFirestore.instance.collection('users');
  UserRepository.instance()
      : _auth = FirebaseAuth.instance,
        _googleSignIn = GoogleSignIn(scopes: ['email']) {
  }

  FirebaseAuth _auth;
  GoogleSignIn _googleSignIn;
  UserModel? user;

  Future<bool> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await (_googleSignIn.signIn());
      if (googleUser != null) {
        final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final GoogleAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      ) as GoogleAuthCredential;
      await _auth.signInWithCredential(credential);
      return true;
      }
      return false;
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

  Future<bool> isUserAlreadyPresent(String uid) async {
    DocumentSnapshot d = await userDb.doc(uid).get();
    if (d.data() != null) {
      return true;
    }
    return false;
  }

  void subscribeToUserChanges(String uid, Function callback) async {
    userDb.doc(uid).snapshots().listen((event) {
      callback(event);
    });
  }

  Future<void> updateUserDetails(String uid, Map<String, dynamic> data) async {
    Map<String, dynamic> dataToUpdate = _getUserUpdateMap(data);
    await userDb.doc(uid).update(dataToUpdate);
  }

  Future<void> setUserDetails(String uid, Map<String, dynamic> data) async {
    Map<String, dynamic> dataToUpdate = _getUserUpdateMap(data);
    await userDb.doc(uid).set(dataToUpdate);
  }

  Future<DocumentSnapshot<Object?>> getUserDetails(String uid) async {
    return userDb.doc(uid).get();
  } 

  Map<String, dynamic> _getUserUpdateMap(Map<String, dynamic> data) {
    Map<String, dynamic> dataToUpdate = new Map<String, dynamic>();
    if (data.containsKey('submissionId')) {
      dataToUpdate['submissionIds'] = FieldValue.arrayUnion(List.filled(1, data['submissionId']));
    }
    if (data.containsKey('challengeId')) {
      dataToUpdate['participatedChallenges'] = FieldValue.arrayUnion(List.filled(1, data['challengeId']));
    }
    data.remove('submissionId');
    data.remove('challengeId');
    data.keys.forEach((element) {
      dataToUpdate[element] = data[element];
    });
    return dataToUpdate;
  }
}