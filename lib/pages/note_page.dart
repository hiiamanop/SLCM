import 'package:flutter/material.dart';

class NotePage extends StatefulWidget {
  const NotePage({super.key});

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
            child: Expanded(
                child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0),
                blurRadius:0,
              )
            ],
            color: Colors.grey[200],
          ),
          child: Column(
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
                              "Catatan",
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Buat catatan",
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
                                  primary: Colors.grey[200], // Background color
                                  onPrimary: Colors.indigo[800], // Text color
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        12), // Button border radius
                                  ),
                                  elevation: 10, // Button shadow
                                ),
                                child: Container(
                                  child: Row(
                                    children: [Icon(Icons.edit)],
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
          ),
        ))));
  }
}
