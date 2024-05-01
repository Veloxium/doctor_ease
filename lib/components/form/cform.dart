import 'package:doctor_ease/color/ccolor.dart';
import 'package:doctor_ease/components/form/cfrom_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomForm extends StatelessWidget {
  const CustomForm(
      {super.key,
      required this.label,
      required this.hintText,
      required this.icon,
      this.isPassword});
  final String label;
  final String hintText;
  final IconData icon;
  final bool? isPassword;

  @override
  Widget build(BuildContext context) {
    final controller = CFormController(initialIsPassword: isPassword ?? false);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Obx(
          () => TextField(
            obscureText: controller.isPassword.value,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 16.0),
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 10.0),
                child: Icon(
                  icon,
                  color: CColors.primary,
                ),
              ),
              hintText: hintText,
              hintStyle: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w400,
              ),
              suffixIcon: isPassword == true
                  ? GestureDetector(
                      onTap: () {
                        controller.visiblityIcon();
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Icon(
                          controller.isIcon.value
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: CColors.primary,
                        ),
                      ),
                    )
                  : null,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
