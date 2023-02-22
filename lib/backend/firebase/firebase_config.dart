import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC5npD2R1vOkYckBJP2DiYf45g6b8KITcU",
            authDomain: "ansync-database.firebaseapp.com",
            projectId: "ansync-database",
            storageBucket: "ansync-database.appspot.com",
            messagingSenderId: "509605436851",
            appId: "1:509605436851:web:4c6a9705fa341187117fc6",
            measurementId: "G-LDBC53WNJR"));
  } else {
    await Firebase.initializeApp();
  }
}
