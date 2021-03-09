import 'package:flutter/material.dart';

class Progress extends StatelessWidget {
  final String messege;

  Progress({this.messege = 'Loading'});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircularProgressIndicator(),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              messege,
              style: TextStyle(fontSize: 16.0),
            ),
          )
        ],
      ),
    );
  }
}
