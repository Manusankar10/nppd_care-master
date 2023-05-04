import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'home_pages/home_page.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(206, 232, 255, 1),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 25.0),
                child: Text(
                  "Let's get started",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                "We will create your account if it does not\nexits already",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(height: 30),
              // login button
              InkWell(
                borderRadius: BorderRadius.circular(25),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  // padding: const EdgeInsets.only(left: 50, right: 25, top: 7, bottom: 7),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromRGBO(28, 118, 224, 1),
                        Color.fromRGBO(65, 218, 89, 1),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(
                            'assets/images/wap.png',
                            height: 20,
                          )),
                      const SizedBox(
                        width: 18,
                      ),
                      const Text(
                        "Continue with whatsapp",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(child: Container()),
              // terms & condition
              Text.rich(
                TextSpan(
                  text: 'By continuing you agree to our ',
                  style: const TextStyle(
                      fontWeight: FontWeight.w300, fontSize: 13),
                  children: [
                    TextSpan(
                      text: 'privacy policy',
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer(),
                    ),
                    const TextSpan(
                      text: ' & ',
                      children: [
                        TextSpan(
                          text: 'terms of service.',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.blue,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
