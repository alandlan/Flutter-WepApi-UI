import 'package:flutter/material.dart';

class TransactionAuthDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Authenticate'),
      backgroundColor: Colors.grey.shade300,
      content: TextField(
        obscureText: true,
        maxLength: 4,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0))
          ),
        ),

        style: TextStyle(fontSize: 64,letterSpacing: 16),
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: (){ print('cancel');},
          child: Text('Cancel'),
        ),FlatButton(
          onPressed: (){ print('confirm');},
          child: Text('Confirm'),
        )
      ],
    );
  }
}
