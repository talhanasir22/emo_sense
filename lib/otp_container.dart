import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpContainer extends StatelessWidget{
  const OtpContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12), // Adjust the value for more or less roundness
        border: Border.all( color: Colors.black45, width: 2),
      ),
      child: TextField(
        style: const TextStyle(fontSize: 20),
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        textAlign: TextAlign.center,
        maxLength: 1,
        decoration: const InputDecoration(
          counterText: '',
            border: InputBorder.none,
        ),
      ),
    );
  }

}