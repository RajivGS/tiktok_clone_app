// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:tiktok_clone_app/constant.dart';
import 'package:tiktok_clone_app/controllers/auth_controllers.dart';
import 'package:tiktok_clone_app/views/widgets/text_input_field.dart';

class SignUp extends StatelessWidget {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "TikTok Clone",
              style: TextStyle(
                  fontSize: 35,
                  color: buttonColor,
                  fontWeight: FontWeight.w900),
            ),
            const SizedBox(height: 10),
            const Text(
              "Register",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 10),
            Stack(
              children: [
                const CircleAvatar(
                  radius: 64,
                  // backgroundImage: AssetImage(
                  //   'assets/a.png',
                  // ),
                  backgroundColor: Colors.white,
                ),
                Positioned(
                  left: 80,
                  bottom: -10,
                  child: IconButton(
                      onPressed: () => authController.pickImage(),
                      icon: const Icon(Icons.add_a_photo)),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextInputField(
                controller: _username,
                labelText: "UserName",
                icon: Icons.person,
                isObscure: false,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextInputField(
                controller: _emailController,
                labelText: "Email",
                icon: Icons.email,
                isObscure: false,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextInputField(
                controller: _passwordController,
                icon: Icons.lock,
                labelText: "Password",
                isObscure: true,
              ),
            ),
            const SizedBox(height: 30),
            Container(
              width: MediaQuery.of(context).size.width - 40,
              height: 50,
              child: InkWell(
                onTap: () => authController.registerUser(
                  _username.text,
                  _emailController.text,
                  _passwordController.text,
                  authController.profilPhoto,
                ),
                child: const Center(
                  child: Text(
                    "Register",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: const BorderRadius.all(Radius.circular(5)),
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an Account ! ",
                    style: TextStyle(fontSize: 20)),
                const SizedBox(width: 8),
                InkWell(
                  onTap: () {
                    print("Navigating User");
                  },
                  child: Text("Login",
                      style: TextStyle(fontSize: 20, color: buttonColor)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
