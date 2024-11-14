import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:emo_sense/primary_container.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dashboard',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40),
            AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText(
                  'Welcome to EmoSense',
                  textStyle: const TextStyle(
                    fontSize: 24,
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.bold,
                  ),
                  speed: const Duration(milliseconds: 80),
                ),
                TyperAnimatedText(
                  'Detect your emotions instantly',
                  textStyle: const TextStyle(
                    fontSize: 20,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.w500,
                  ),
                  speed: const Duration(milliseconds: 50),
                ),
                TyperAnimatedText(
                  'Discover mood-based quotes',
                  textStyle: const TextStyle(
                    fontSize: 20,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.w500,
                  ),
                  speed: const Duration(milliseconds: 50),
                ),
                TyperAnimatedText(
                  'Visualize your emotions with charts',
                  textStyle: const TextStyle(
                    fontSize: 20,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.w500,
                  ),
                  speed: const Duration(milliseconds: 50),
                ),
                TyperAnimatedText(
                  'Make personal notes anytime',
                  textStyle: const TextStyle(
                    fontSize: 20,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.w500,
                  ),
                  speed: const Duration(milliseconds: 50),
                ),
                TyperAnimatedText(
                  'Let\'s go',
                  textStyle: const TextStyle(
                    fontSize: 24,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.w500,
                  ),
                  speed: const Duration(milliseconds: 50),
                ),
        
              ],
              totalRepeatCount: 1,
              pause: const Duration(seconds: 2),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PrimaryContainer(
                  Pagetitle: '',
                  text: 'Detect',
                  image: Image.asset('assets/Images/emoji.png'),
                ),
                PrimaryContainer(
                  Pagetitle: '',
                  text: 'Quotes',
                  image: Image.asset('assets/Images/quotes.png'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PrimaryContainer(
                  Pagetitle: '',
                  text: 'Emotion Chart',
                  image: Image.asset('assets/Images/chart.png'),
                ),
                PrimaryContainer(
                  Pagetitle: '',
                  text: 'My Notes',
                  image: Image.asset('assets/Images/Notes.png'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
