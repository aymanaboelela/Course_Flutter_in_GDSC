import 'package:course_flutter/core/ui/color.dart';
import 'package:course_flutter/screen/view/home/home_screen.dart';
import 'package:course_flutter/screen/widget/auth/custom_materialButton.dart';
import 'package:course_flutter/screen/widget/auth/cutom_textFromField.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromRGBO(29, 143, 242, 0.1),
            Color.fromRGBO(255, 255, 255, 1),
          ])),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset("assets/images/logo.png"),
                const Text(
                  "Welcome back !",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w400),
                ),
                const Text(
                  "Login to your account",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextFormField(
                    hintText: "Enter Your Email", icon: Icons.person),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextFormField(
                    hintText: "Enter Your Password", icon: Icons.password),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const Text("Forget password",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.red)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomMaterialButton(
                  text: "Login",
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomeScreen(),));
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            color: Colors.black,
                            height: 1,
                            width: width * 0.25),
                        const Text("OR Sign In With",
                            style: TextStyle(
                              color: AppColor.textHint,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            )),
                        Container(
                            color: Colors.black,
                            height: 1,
                            width: width * 0.25),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              "assets/images/facebook.png",
                              height: 50,
                              width: 50,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text("Facebook")
                          ],
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Column(
                          children: [
                            Image.asset(
                              "assets/images/google.png",
                              height: 50,
                              width: 50,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text("Google")
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Text("Don’t have an account ?",
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColor.textHint,
                              fontWeight: FontWeight.w400,
                            )),
                        const SizedBox(
                          width: 8,
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Text("Sign Up",
                              style: TextStyle(
                                fontSize: 16,
                                color: AppColor.primaryColor,
                                fontWeight: FontWeight.bold,
                              )),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
