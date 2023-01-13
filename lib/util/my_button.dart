import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String iconPath;
  final String texts;

  MyButton(this.iconPath, this.texts);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // pay send bill button styling
        Container(
          padding: EdgeInsets.all(20),
          height: 75,
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade500,
                    blurRadius: 10,
                    spreadRadius: 2)
              ]),
          child: Image.asset(iconPath),
        ),
        SizedBox(
          height: 10,
        ),
        //Send text
        Text(
          texts,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700]),
        )
      ],
    );
  }
}
