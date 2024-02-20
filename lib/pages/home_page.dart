import 'package:flutter/material.dart';
import 'package:super_app/pages/perpustakan/listKelas.dart';
import 'package:super_app/util/emoji.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void showNotificationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('New Notifications'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('You have new tasks!'),
              Text('You have new exams!'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Center(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: IntrinsicHeight(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          // Halo, Tanggal, Profile button
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // halo, nama
                                  Row(
                                    children: [
                                      Text(
                                        "Halo, Naufal!",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.indigo,
                                          fontFamily: 'Poppins',
                                        ),
                                      )
                                    ],
                                  ),

                                  // kelas
                                  Row(
                                    children: [
                                      Text(
                                        "XII IPA 7",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.indigo,
                                          fontFamily: 'Poppins',
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              ElevatedButton.icon(
                                onPressed: () {
                                  showNotificationDialog(); // Show the notification dialog
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.indigo.withOpacity(0.7), // Background color
                                  onPrimary: Colors.white, // Text/icon color
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        12), // Button border radius
                                  ),
                                  elevation: 5, // Button shadow
                                ),
                                icon: Icon(
                                  Icons.notifications,
                                  color: Colors.white,
                                ),
                                label: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                                  child: Text(
                                    '2', // Add your label text here
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              )
                            ],
                          ),

                          SizedBox(
                            height: 15,
                          ),

                          // tanggal hari ini
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.indigo.withOpacity(0.8),
                                  blurRadius: 15,
                                )
                              ],
                            ),
                            padding: EdgeInsets.all(12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.school,
                                      color: Colors.indigo[600],
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Senin, 12 Februari 2024",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.indigo[800],
                                        fontFamily: 'Poppins',
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),

                          SizedBox(
                            height: 20,
                          ),

                          // Bagaimana Perasaanmu Hari ini?
                          Container(
                            child: Column(
                              children: [
                                // tulisan
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Bagaimana kabarmu hari ini ?",
                                      style: TextStyle(
                                        color: Colors.indigo,
                                        fontFamily: 'Poppins',
                                        fontSize: 13,
                                      ),
                                    ),
                                    Icon(Icons.more_horiz, color: Colors.white, shadows: [
                                      Shadow(
                                        color: Colors.black,
                                        blurRadius: 10,
                                        offset: Offset(0, 1),
                                      ),
                                    ])
                                  ],
                                ),

                                SizedBox(
                                  height: 15,
                                ),

                                //emoji
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    // emoji sad
                                    Column(
                                      children: [
                                        // emoticon
                                        Emoji(
                                          emoji: '😭',
                                        ),

                                        SizedBox(
                                          height: 8,
                                        ),

                                        // caption
                                        Text(
                                          "Sedih",
                                          style: TextStyle(
                                              color: Colors.indigo,
                                              fontFamily: 'Poppins',
                                              fontSize: 12),
                                        )
                                      ],
                                    ),
                                    // emoji flat
                                    Column(
                                      children: [
                                        Emoji(
                                          emoji: '😡',
                                        ),

                                        SizedBox(
                                          height: 8,
                                        ),

                                        // caption
                                        Text(
                                          "Marah",
                                          style: TextStyle(
                                              color: Colors.indigo,
                                              fontFamily: 'Poppins',
                                              fontSize: 12),
                                        )
                                      ],
                                    ),
                                    // emoji happy
                                    Column(
                                      children: [
                                        Emoji(
                                          emoji: '🤗',
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),

                                        // caption
                                        Text(
                                          "Gembira",
                                          style: TextStyle(
                                              color: Colors.indigo,
                                              fontFamily: 'Poppins',
                                              fontSize: 12),
                                        )
                                      ],
                                    ),
                                    // emoji perfect
                                    Column(
                                      children: [
                                        Emoji(
                                          emoji: '🤢',
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),

                                        // caption
                                        Text(
                                          "Sakit",
                                          style: TextStyle(
                                              color: Colors.indigo,
                                              fontFamily: 'Poppins',
                                              fontSize: 12),
                                        )
                                      ],
                                    ),
                                  ],
                                ),

                                // jarak perbatasan
                                SizedBox(
                                  height: 25,
                                )
                              ],
                            ),
                          ),

                          Expanded(
                            child: Column(
                              children: [
                                SizedBox(height: 10),
                                Text(
                                  "Menu Utama",
                                  style: TextStyle(
                                      color: Colors.indigo,
                                      fontSize: 18,
                                      fontFamily: 'Poppins'),
                                ),
                                SizedBox(height: 20),
                                ElevatedButton(
                                  onPressed: () {
                                    // go to class list page
                                    Navigator.push(
                                      context, MaterialPageRoute(builder: (context) => ListKelasEbook()));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.grey[200], // Background color
                                    onPrimary: Colors.indigo[800], // Text color
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
                                              Icons.book,
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
                                                  "e-Book",
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.indigo[800],
                                                    fontFamily: 'Poppins',
                                                  ),
                                                ),
                                                Text(
                                                  "Semua buku tersedia disini!!",
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
                                  height: 12,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    // Add your onPressed logic here
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.grey[200], // Background color
                                    onPrimary: Colors.indigo[800], // Text color
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
                                              Icons.task,
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
                                                  "e-Task",
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.indigo[800],
                                                    fontFamily: 'Poppins',
                                                  ),
                                                ),
                                                Text(
                                                  "5 tugas tersisa",
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
                                  height: 12,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    // Add your onPressed logic here
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.grey[200], // Background color
                                    onPrimary: Colors.indigo[800], // Text color
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
                                              Icons.check_box,
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
                                                  "Live Exam",
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.indigo[800],
                                                    fontFamily: 'Poppins',
                                                  ),
                                                ),
                                                Text(
                                                  "Ujian secara langsung disini",
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
                                  height: 12,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    // Add your onPressed logic here
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.grey[200], // Background color
                                    onPrimary: Colors.indigo[800], // Text color
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
                                              Icons.list_alt_outlined,
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
                                                  "e-Report",
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.indigo[800],
                                                    fontFamily: 'Poppins',
                                                  ),
                                                ),
                                                Text(
                                                  "Cek nilaimu disini! ",
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
                                  height: 110,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
