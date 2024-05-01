import 'package:doctor_ease/color/ccolor.dart';
import 'package:doctor_ease/components/button/cbutton.dart';
import 'package:doctor_ease/components/form/cform.dart';
import 'package:doctor_ease/features/auth/screen/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                child: Image.asset("assets/login.png", width: 200, height: 200),
              ),
              const SizedBox(
                height: 40.0,
              ),
              const CustomForm(
                label: "Email",
                hintText: "Enter your email",
                icon: Icons.email_outlined,
                isPassword: false,
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
              Container(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const CustomButton(
                label: "Login",
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(() => const RegisterScreen());
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        color: CColors.primary,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  "Or",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const CustomButton(
                  label: "Login with Google",
                  background: Colors.white,
                  textColor: Colors.black,
                  borderColor: CColors.primary,
                  iconImage: "assets/googleicon.png",
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
