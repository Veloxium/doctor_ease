import 'package:doctor_ease/color/ccolor.dart';
import 'package:doctor_ease/features/home/screen/home.dart';
import 'package:doctor_ease/features/splash/screen/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Doctor Ease',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: CColors.primary),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
