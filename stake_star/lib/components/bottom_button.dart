import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final onTap;
  final String btnName;
  BottomButton({required this.onTap, required this.btnName});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      // onTap: () {
      //   setState(() {
      //     Navigator.push(context, MaterialPageRoute(
      //       builder: (_) {
      //         return ProfileScreen();
      //       },
      //     ));
      //   });
      // },
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.greenAccent, Colors.green],
            end: Alignment.centerLeft,
            begin: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(40),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          btnName,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
