import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:quiz_app/di/injector.dart';
import 'firebase_options.dart';
import 'package:quiz_app/presentation/application.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await initLocatorWithNavigatorKey();
  runApp(Application());
}

