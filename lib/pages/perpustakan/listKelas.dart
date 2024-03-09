import 'package:flutter/material.dart';
import 'package:super_app/pages/perpustakan/listBuku.dart';

class ListKelasEbook extends StatefulWidget {
  const ListKelasEbook({super.key});

  @override
  State<ListKelasEbook> createState() => _ListKelasEbookState();
}

class _ListKelasEbookState extends State<ListKelasEbook> {
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
                          Column(
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Jenis Buku",
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
                          ElevatedButton(
                            onPressed: () {
                              // go to book list page
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ListBukuEbook()));
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
                                      Text(
                                        "X",
                                        style: TextStyle(
                                            fontSize: 25,
                                            color: Colors.indigo,
                                            fontFamily: 'Poppins'),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Kelas 10",
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
                                      builder: (context) => ListBukuEbook()));
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
                                      Text(
                                        "XI",
                                        style: TextStyle(
                                            fontSize: 25,
                                            color: Colors.indigo,
                                            fontFamily: 'Poppins'),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Kelas 11",
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
                                      builder: (context) => ListBukuEbook()));
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
                                      Text(
                                        "XII",
                                        style: TextStyle(
                                            fontSize: 25,
                                            color: Colors.indigo,
                                            fontFamily: 'Poppins'),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Kelas 12",
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
                                      builder: (context) => ListBukuEbook()));
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
                                      Text(
                                        "📖",
                                        style: TextStyle(
                                            fontSize: 25,
                                            color: Colors.indigo,
                                            fontFamily: 'Poppins'),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Buku Lainnya",
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
