import 'package:flutter/material.dart';
import 'package:logo_page/witgets/custom_text_field.dart';
import 'package:logo_page/witgets/custom_bottombar.dart';
// ignore_for_file: avoid_print

class LogoPage extends StatelessWidget {
  const LogoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buildBottomBar(context),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "lib/assets/images/background.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 70, bottom: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "LOGO",
                        style: TextStyle(
                          color: Color.fromARGB(255, 26, 2, 247),
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Image(image: AssetImage("lib/assets/images/icon.jpg")),
                    ],
                  ),
                ),
                const SizedBox(height: 36),
                customField(context, Icons.account_circle_outlined),
                const SizedBox(height: 36),
                customField(context, Icons.lock_outline_rounded),
                const SizedBox(height: 80),
                Material(
                  elevation: 4,
                  borderRadius: BorderRadius.circular(60),
                  child: ElevatedButton(
                    onPressed: () {
                      print("Login was pressed");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                      foregroundColor: const Color.fromARGB(255, 12, 96, 221),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60),
                      ),
                      fixedSize: Size(
                        MediaQuery.of(context).size.width * 0.8,
                        MediaQuery.of(context).size.height * 0.07,
                      ),
                    ),
                    child: const Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
