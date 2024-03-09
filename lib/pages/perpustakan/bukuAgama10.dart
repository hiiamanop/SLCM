import 'dart:io';

import 'package:flutter/material.dart';
import 'package:super_app/API/pdf_api.dart';
import 'package:super_app/pages/perpustakan/buku.dart';

class BukuAgama10 extends StatefulWidget {
  const BukuAgama10({super.key});

  @override
  State<BukuAgama10> createState() => _BukuAgama10State();
}

class _BukuAgama10State extends State<BukuAgama10> {
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
        body: SafeArea(
            child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Mata Pelajaran",
                                style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 18,
                                    fontFamily: 'Poppins'),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () async {
                              // go to e-book
                              final path =
                                  'lib/assets/docs/Kelas10_matematika.pdf';
                              final file = await PDFApi.loadAsset(path);
                              openPDF(context, file);
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor:
                                  Colors.grey[200], // Background color
                              textStyle: TextStyle(
                                  color: Colors.indigo[800]), // Text color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    12), // Button border radius
                              ),
                              elevation: 10, // Button shadow
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.menu_book_rounded,
                                        size: 30,
                                        color: Colors.green[600],
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Agama Islam",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.indigo[800],
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Icon(Icons.more_horiz,
                                      color: Colors.indigo[800]),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            onPressed: () async {
                              // go to e-book
                              final path =
                                  'lib/assets/docs/kelas10_pendidikanPancasila.pdf';
                              final file = await PDFApi.loadAsset(path);
                              openPDF(context, file);
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor:
                                  Colors.grey[200], // Background color
                              textStyle: TextStyle(
                                  color: Colors.indigo[800]), // Text color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    12), // Button border radius
                              ),
                              elevation: 10, // Button shadow
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.menu_book_rounded,
                                        size: 30,
                                        color: Colors.blue[600],
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Agama Kristen",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.indigo[800],
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Icon(Icons.more_horiz,
                                      color: Colors.indigo[800]),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Add your onPressed logic here
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BukuAgama10()));
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor:
                                  Colors.grey[200], // Background color
                              textStyle: TextStyle(
                                  color: Colors.indigo[800]), // Text color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    12), // Button border radius
                              ),
                              elevation: 10, // Button shadow
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.menu_book_rounded,
                                        size: 30,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Agama Katolik",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.indigo[800],
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Icon(Icons.more_horiz,
                                      color: Colors.indigo[800]),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            onPressed: () async {
                              // go to e-book
                              final path = 'lib/assets/docs/Kelas10_b.ing.pdf';
                              final file = await PDFApi.loadAsset(path);
                              openPDF(context, file);
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor:
                                  Colors.grey[200], // Background color
                              textStyle: TextStyle(
                                  color: Colors.indigo[800]), // Text color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    12), // Button border radius
                              ),
                              elevation: 10, // Button shadow
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.menu_book_rounded,
                                        size: 30,
                                        color: Colors.yellow[700],
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Agama Hindu",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.indigo[800],
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Icon(Icons.more_horiz,
                                      color: Colors.indigo[800]),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                             onPressed: () async {
                              // go to e-book
                              final path =
                                  'lib/assets/docs/Kelas10_b.ing.pdf';
                              final file = await PDFApi.loadAsset(path);
                              openPDF(context, file);
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor:
                                  Colors.grey[200], // Background color
                              textStyle: TextStyle(
                                  color: Colors.indigo[800]), // Text color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    12), // Button border radius
                              ),
                              elevation: 10, // Button shadow
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.menu_book_rounded,
                                        size: 30,
                                        color: Colors.orange[600],
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Agama Buddha",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.indigo[800],
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Icon(Icons.more_horiz,
                                      color: Colors.indigo[800]),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                             onPressed: () async {
                              // go to e-book
                              final path =
                                  'lib/assets/docs/Kelas10_b.ing.pdf';
                              final file = await PDFApi.loadAsset(path);
                              openPDF(context, file);
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor:
                                  Colors.grey[200], // Background color
                              textStyle: TextStyle(
                                  color: Colors.indigo[800]), // Text color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    12), // Button border radius
                              ),
                              elevation: 10, // Button shadow
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.menu_book_rounded,
                                        size: 30,
                                        color: Colors.red[600],
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Agama Khonghucu",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.indigo[800],
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Icon(Icons.more_horiz,
                                      color: Colors.indigo[800]),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        )));
  }
}

void openPDF(BuildContext context, File file) => Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => Ebook(file: file)),
    );
