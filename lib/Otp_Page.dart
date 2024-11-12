import 'package:emo_sense/newpassword_page.dart';
import 'package:emo_sense/otp_container.dart';
import 'package:emo_sense/primary_btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class OtpPage extends StatelessWidget{
  const OtpPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('OTP',style: TextStyle(color: Colors.white),),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white,)),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height:20),
          const Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OtpContainer(),
                OtpContainer(),
                OtpContainer(),
                OtpContainer(),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          PrimaryButton(text: 'Verify',
              colors: Colors.deepPurpleAccent,
              textColor: Colors.white,
              onPress: (){
              Navigator.push(context, PageTransition(child: const NewPasswordPage(), type: PageTransitionType.rightToLeft));
          })
        ],
      ),
    );
  }

}