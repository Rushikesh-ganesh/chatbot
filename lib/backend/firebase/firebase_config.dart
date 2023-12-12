import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDvW6KJy-hdxfKBdpkz27aJRKKZxcKCIzE",
            authDomain: "chat-with-pdf-or-websit-oh18ip.firebaseapp.com",
            projectId: "chat-with-pdf-or-websit-oh18ip",
            storageBucket: "chat-with-pdf-or-websit-oh18ip.appspot.com",
            messagingSenderId: "250650216193",
            appId: "1:250650216193:web:7ad2f1a92e6f522f13fd00"));
  } else {
    await Firebase.initializeApp();
  }
}
