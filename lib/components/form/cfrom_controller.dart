import 'package:get/get.dart';

class CFormController extends GetxController {
  static CFormController get to => Get.find();
  final isPassword = false.obs;
  final isIcon = false.obs;

  CFormController({required bool initialIsPassword}) {
    isPassword.value = initialIsPassword;
  }

  void visiblityIcon() {
    isPassword.value = !isPassword.value;
    isIcon.value = !isIcon.value;
  }
}
