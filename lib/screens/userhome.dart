import 'package:flutter/material.dart';

class Userhome extends StatelessWidget {
  const Userhome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User'),
        leading: Builder(builder: (BuildContext) {
          return IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
          );
        }),
      ),
    );
  }
}
