// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:google_sign_in/google_sign_in.dart';

Future<String?> signInWithGoogle() async {
  try {
    final GoogleSignIn googleSignIn = GoogleSignIn(
        clientId:
            "51724384807-gemap1ghq9qihefdt9li3p7rlqigo2it.apps.googleusercontent.com",
        scopes: <String>[
          "https://www.googleapis.com/auth/calendar",
          "https://www.googleapis.com/auth/calendar.events"
        ]);
    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount!.authentication;
    print("googleSignInAuthentication.accessToken");
    print(googleSignInAuthentication.accessToken);
    return googleSignInAuthentication.accessToken;
  } catch (e) {
    print("sign in with google -e ");
    print(e);
    return null;
  }
}
