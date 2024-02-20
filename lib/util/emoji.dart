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
        primary: Colors.indigo.withOpacity(0.2), // Background color
        onPrimary: Colors.white, // Text/icon color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16), // Button border radius
        ),
        elevation: 0, // Button shadow
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal:6,vertical: 16),
        child: Center(
          child: Text(
            emoji,
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
