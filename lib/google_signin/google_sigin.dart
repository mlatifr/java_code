import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';

class GoogleSignInProvider extends ChangeNotifier {
  final googleSignin = GoogleSignIn();
  GoogleSignInAccount? _user;
  GoogleSignInAccount? get user => _user;
  Future googleLogin() async {
    // final googleUser = await googleSignin.signIn();
    // if (googleUser == null) return;
    _user = await googleSignin.signIn();
    print('_user.email ${_user?.email}');
    // return googleUser.email;
    notifyListeners();
  }

  Future displayName() async {
    _user = await googleSignin.signIn();
    print('_user?.displayName ${_user?.displayName}');
    return _user?.displayName;
  }

  Future handleSignOut() => googleSignin.disconnect();

  Future signOut() async {
    _user = await googleSignin.signOut();

    print('logout.email ${_user?.email}');
  }
}
