import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDbRZ67oT4TZPEkYrpmgj49YtttGuZul_c",
            authDomain: "eventos-b6398.firebaseapp.com",
            projectId: "eventos-b6398",
            storageBucket: "eventos-b6398.firebasestorage.app",
            messagingSenderId: "959388219831",
            appId: "1:959388219831:web:1b9038f22ada08f8249032",
            measurementId: "G-PTMG9KH0N5"));
  } else {
    await Firebase.initializeApp();
  }
}
