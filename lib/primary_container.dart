import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrimaryContainer extends StatelessWidget{
  const PrimaryContainer({super.key, this.image, this.text, required this.Pagetitle});
  final image;
  final text;
  final String Pagetitle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
      },
      child: Container(
        height: 150,
        width: 170,
        decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
                height: 100,
                width: 100,
                child: image),
            text,
          ],
        ),
      ),
    );
  }

}

