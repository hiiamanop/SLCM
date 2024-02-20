import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class Ebook extends StatelessWidget {
  const Ebook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
          backgroundColor: Colors.grey[200],
          iconTheme: IconThemeData(
            color: Colors.indigo, // Change back button color to indigo
          ),
        ),
      body: PDFView(
        filePath: 'lib/assets/docs/Kelas10_matematika.pdf', // Replace with the path to your PDF file
        enableSwipe: true, // Allow users to swipe horizontally to change pages
        swipeHorizontal: true, // Set to false to swipe vertically
        autoSpacing: false, // Enable or disable spacing between pages
        pageFling: false, // Set to true for page fling (like ViewPager)
        pageSnap: true, // Set to true to snap to the nearest page (like ViewPager)
        fitPolicy: FitPolicy.BOTH, // Set the fit policy
      ),
    );
  }
}
