import 'package:ecomflutter/screens/auth_ui/SiginScreen.dart';
import 'package:ecomflutter/screens/auth_ui/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';

import 'screens/userpanel/mainscreen.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  // ✅ Ensure bindings before async operations
  WidgetsFlutterBinding.ensureInitialized();

  // ✅ Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SignInScreen(), // Or SplashScreen if you want it to show first
    );
  }
}
