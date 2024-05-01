import 'package:doctor_ease/features/auth/screen/login.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  RxBool animate = false.obs;

  @override
  void onInit() {
    super.onInit();
    startAnimation();
  }

  Future<void> startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 400));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 2000));
    Get.to(() => const LoginScreen());
  }
}
