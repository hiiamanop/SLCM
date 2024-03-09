import 'dart:io';

import 'package:flutter/material.dart';
import 'package:super_app/API/pdf_api.dart';
import 'package:super_app/pages/perpustakan/buku.dart';

class ListBukuEbook11 extends StatefulWidget {
  const ListBukuEbook11({super.key});

  @override
  State<ListBukuEbook11> createState() => _ListBukuEbook11State();
}

class _ListBukuEbook11State extends State<ListBukuEbook11> {
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
                                        Icons.calculate,
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
                                            "Matematika",
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
                                  'lib/assets/docs/Kelas10_pendidikanPancasila.pdf';
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
                                        Icons.flag,
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
                                            "Kewarganegaraan",
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
                                            "Pendidikan Agama",
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
                                        Icons.public,
                                        size: 30,
                                        color: Colors.indigo[600],
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Bahasa Inggris",
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
