import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path/path.dart';

class Ebook extends StatefulWidget {
  final File file;

  const Ebook({
    Key? key,
    required this.file,
    }) : super(key: key);

  @override
  State<Ebook> createState() => _EbookState();
}

class _EbookState extends State<Ebook> {
  @override
  Widget build(BuildContext context) {
    final name = basename(widget.file.path);;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(name),
        backgroundColor: Colors.grey[200],
        iconTheme: IconThemeData(
          color: Colors.indigo, // Change back button color to indigo
        ),
      ),
      body: PDFView(
        filePath: widget.file.path,
        
      ),
    );
  }
}
