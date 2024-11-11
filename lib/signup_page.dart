import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget{
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 25),
              const CircleAvatar(
                backgroundImage: AssetImage('assets/Images/Logo.png'),
                radius: 100,
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 500,
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
                              'Create New \n   Account',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(height:20 ,),
                          SizedBox(
                            width: 320, // Set a fixed width for the text field
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                hintText: 'Name',
                                hintStyle: const TextStyle(color: Colors.black45),
                              ),
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
                              decoration: InputDecoration(
                                filled: true,

                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                hintText: 'Password',
                                hintStyle: const TextStyle(color: Colors.black45),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20,),
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
                                'SignUp',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextButton(
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            child: const Text(
                              'Already Registered? SignIn',
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
            ],
          ),
        ),
      ),
    );
  }

  }