import 'package:emo_sense/primary_btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewPasswordPage extends StatelessWidget{
  const NewPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Password',style: TextStyle(color: Colors.white),),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white,)),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Column(
        children: [
          const SizedBox(
          height: 20,
        ),
          Center(
            child: SizedBox(
              width: 320,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'New Password',
                  hintStyle: const TextStyle(color: Colors.black45)
                ),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Center(
            child: SizedBox(
              width: 320,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Confirm Password',
                    hintStyle: const TextStyle(color: Colors.black45)
                ),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          PrimaryButton(
              text: 'Change Password',
              colors: Colors.deepPurpleAccent,
              textColor: Colors.white,
               onPress: (){})
        ],

      ),
    );
  }

}