import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';

class GoogleSignInProvider extends ChangeNotifier {
  final googleSignin = GoogleSignIn();
  GoogleSignInAccount? _user;
  GoogleSignInAccount? get user => _user!;
  Future googleLogin() async {
    final googleUser = await googleSignin.signIn();
    if (googleUser == null) return;
    _user = googleUser;
    print('googleUser.email ${googleUser.email}');
    notifyListeners();
  }

  Future signOut() async {
    final googleUser = await googleSignin.signOut();
    if (googleUser != null) return;
    _user = googleUser;

    print('googleUser.email ${googleUser?.email}');
  }
}
