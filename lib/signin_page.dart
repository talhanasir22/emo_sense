import 'package:emo_sense/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _isObscured = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 50),
              const CircleAvatar(
                backgroundImage: AssetImage('assets/Images/Logo.png'),
                radius: 100,
              ),
              const SizedBox(height: 20),
              const Text(
                'Welcome To EmoSense',
                style: TextStyle(
                    color: Colors.deepPurpleAccent,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 440,
                child: Container(
                  height: double.infinity, // Fixed height
                  width: double.infinity, // Full width of the screen
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.deepPurpleAccent,
                  ),
                  child: Center(
                    child: Expanded(
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            width: 320, // Set a fixed width for the text field
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                hintText: 'Email',
                                hintStyle: const TextStyle(color: Colors.black45),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            width: 320, // Set a fixed width for the text field
                            child: TextField(
                              obscureText: _isObscured,
                              decoration: InputDecoration(
                                filled: true,
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _isObscured = !_isObscured;
                                    });
                                  },
                                  icon: _isObscured
                                      ? const Icon(Icons.visibility, size: 20)
                                      : const Icon(Icons.visibility_off, size: 20),
                                ),
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                hintText: 'Password',
                                hintStyle: const TextStyle(color: Colors.black45),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Forgot Password?',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 200,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                              child: const Text(
                                'Login',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextButton(
                            onPressed: () {
                              Navigator.push(context, PageTransition(child: const SignUpPage(), type: PageTransitionType.rightToLeft));
                            },
                            child: const Text(
                              'Don\'t have an account? Create new',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30), // Added spacing at the bottom
              // Additional text for creating a new account
            ],
          ),
        ),
      ),
    );
  }
}