import 'package:flutter/material.dart';

class CashoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cashout Screen',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      body: Center(
        child: Text('Cashout Screen'),
      ),
    );
  }
}
