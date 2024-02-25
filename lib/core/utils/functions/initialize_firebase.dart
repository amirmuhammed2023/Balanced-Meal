import 'dart:io';

import 'package:firebase_core/firebase_core.dart';

Future<void> initializefirebase() async {
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: "AIzaSyDl6uxTMe3bGfW57iOoKlIO9NhiXVeEvF8",
              appId: "1:965088 248991:android:2dee8aa83576f802558eaa",
              messagingSenderId: "965088248991",
              projectId: "balancedmeal-df3df"))
      : await Firebase.initializeApp();
}
