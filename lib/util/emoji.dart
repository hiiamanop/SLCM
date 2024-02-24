import 'package:flutter/material.dart';

class Emoji extends StatelessWidget {
  final String emoji;

  const Emoji({Key? key, required this.emoji}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Add your onPressed logic here
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.indigo, // Background color
        textStyle: TextStyle(color: Colors.white), // Text color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5), // Button border radius
        ),
        elevation: 10, // Button shadow
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Center(
          child: Text(
            emoji,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
