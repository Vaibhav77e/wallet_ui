// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Mycard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final colors;

  Mycard(
      {required this.balance,
      required this.cardNumber,
      required this.expiryMonth,
      required this.expiryYear,
      required this.colors});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        padding: EdgeInsets.all(15),
        width: 300,
        decoration: BoxDecoration(
            color: colors, borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Balance',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Container(height: 25, child: Image.asset('images/rupay.png')),
              ],
            ),
            SizedBox(height: 12),
            Text(
              '₹ ${balance}',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  cardNumber.toString(),
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  '${expiryMonth} / ${expiryYear}',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
