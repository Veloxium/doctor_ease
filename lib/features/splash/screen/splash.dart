import 'package:doctor_ease/color/ccolor.dart';
import 'package:doctor_ease/features/splash/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
  final controller = Get.put(SplashScreenController());

    return Scaffold(
      backgroundColor: CColors.primary,
      body: Obx(
        () => Center(
          child: AnimatedOpacity(
            opacity: controller.animate.value ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 400),
            child: SizedBox(
              width: 120,
              height: 120,
              child: Image.asset(
                "assets/logo.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }
}