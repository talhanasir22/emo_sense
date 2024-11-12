import 'package:emo_sense/Otp_Page.dart';
import 'package:emo_sense/primary_btn.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Recover Password',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0), // Add padding for a better layout
        child: Column(
          mainAxisSize: MainAxisSize.min, // Ensures it fits the screen without overflow
          children: [
            const SizedBox(height: 20),
            Center(
              child: SizedBox(
                width: 320,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your email here',
                    hintStyle: const TextStyle(color: Colors.black45),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            PrimaryButton(
              text: 'Get OTP',
              colors: Colors.deepPurpleAccent,
              textColor: Colors.white,
              onPress: () {
                Navigator.push(
                  context,
                  PageTransition(
                    child: const OtpPage(),
                    type: PageTransitionType.rightToLeft,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
