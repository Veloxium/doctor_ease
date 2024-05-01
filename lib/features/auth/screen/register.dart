import 'package:doctor_ease/color/ccolor.dart';
import 'package:doctor_ease/components/button/cbutton.dart';
import 'package:doctor_ease/components/form/cform.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 60.0,
              ),
              Container(
                alignment: Alignment.center,
                child:
                    Image.asset("assets/register.png", width: 200, height: 200),
              ),
              const SizedBox(
                height: 40.0,
              ),
              const CustomForm(
                label: "Username",
                hintText: "Enter your username",
                icon: Icons.person_outlined,
                isPassword: false,
              ),
              const SizedBox(
                height: 26.0,
              ),
              const CustomForm(
                label: "Email Address",
                hintText: "Enter your Email",
                icon: Icons.key_outlined,
                isPassword: true,
              ),
              const SizedBox(
                height: 26.0,
              ),
              const CustomForm(
                label: "Password",
                hintText: "Enter your password",
                icon: Icons.key_outlined,
                isPassword: true,
              ),
              const SizedBox(
                height: 30.0,
              ),
              const CustomButton(
                label: "Register",
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: const Text(
                      "Sign in",
                      style: TextStyle(
                        color: CColors.primary,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
