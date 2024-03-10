import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDJ7u0nBE-KX4vaBsEf3mmbB0ZHF4zxHfQ",
            authDomain: "cm3070-v2.firebaseapp.com",
            projectId: "cm3070-v2",
            storageBucket: "cm3070-v2.appspot.com",
            messagingSenderId: "51724384807",
            appId: "1:51724384807:web:487ac11281788bcdb4ac02",
            measurementId: "G-RNXLDBRMPB"));
  } else {
    await Firebase.initializeApp();
  }
}
