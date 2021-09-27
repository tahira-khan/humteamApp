import 'dart:io';

import 'package:humteampro/Screens/sleash_sxreen.dart';
import 'package:humteampro/Screens/solution.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:humteampro/Screens/sleash_sxreen.dart';
import 'page/fingerprint_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = new MyHttpOverrides();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = 'Hum Team';
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.orange),
        home: SpleashScreen(),
      );
}
