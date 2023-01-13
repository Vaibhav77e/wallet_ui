import 'package:flutter/material.dart';

class MyTileView extends StatelessWidget {
  final String imageIcon;
  final String tileTitle;
  final String subtitle;
  const MyTileView(this.imageIcon, this.tileTitle, this.subtitle);

  //List view of transaction

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 40,
                child: Image.asset(imageIcon),
              ),
              const SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tileTitle,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(subtitle,
                      style: TextStyle(fontSize: 16, color: Colors.black45)),
                ],
              ),
            ],
          ),
          const Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}
