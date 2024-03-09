import 'package:flutter/material.dart';

class ClassPage extends StatefulWidget {
  const ClassPage({super.key});

  @override
  State<ClassPage> createState() => _ClassPageState();
}

class _ClassPageState extends State<ClassPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
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
                                "Daftar Kelas",
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
                        onPressed: () {
                          // Add your onPressed logic here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:  Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                8), // Button border radius
                          ),
                          elevation: 10, // Button shadow
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                      Text(
                                        "Ibu Susi Susanti M.Pd.",
                                        style: TextStyle(
                                          color: Colors.indigo[800],
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
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
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                12), // Button border radius
                          ),
                          elevation: 10, // Button shadow
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                      Text(
                                        "Ibu Novi Ardelia S.Pd",
                                        style: TextStyle(
                                          color: Colors.indigo[800],
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
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
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                12), // Button border radius
                          ),
                          elevation: 10, // Button shadow
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                      Text(
                                        "Bapak Dudi Herlino S.Ag",
                                        style: TextStyle(
                                          color: Colors.indigo[800],
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
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
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                12), // Button border radius
                          ),
                          elevation: 10, // Button shadow
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                      Text(
                                        "Ibu Berliana S.Pd",
                                        style: TextStyle(
                                          color: Colors.indigo[800],
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Tambah kelas",
                                style: TextStyle(
                                    color: Colors.indigo,
                                    fontFamily: 'Poppins',
                                    fontSize: 16),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      12), // Button border radius
                                ),
                                elevation: 10, // Button shadow
                              ),
                              child: Container(
                                child: Row(
                                  children: [
                                    Icon(Icons.playlist_add_outlined, color: Colors.indigo,)
                                  ],
                                ),
                              ))

                            ],
                          )
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
