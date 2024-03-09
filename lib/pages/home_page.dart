import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:super_app/pages/perpustakan/listKelas.dart';
import 'package:fl_chart/fl_chart.dart';

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

  Widget _buildMenuButton(
      IconData icon, Function()? onPressed, Color iconColor) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16), // Button border radius
        ),
        elevation: 0, // Button shadow
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 0, vertical: 20), // Adjust the padding here
        child: Center(child: Icon(icon, color: iconColor)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo[800],
        body: Column(
          children: [
            // nama dan button notif
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // nama & kelas
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Halo, Naufal",
                        style: TextStyle(
                            color: Colors.grey[200],
                            fontFamily: 'Poppins',
                            fontSize: 16),
                      ),
                      Text(
                        "XII IPA 7",
                        style: TextStyle(
                            color: Colors.grey[200],
                            fontFamily: 'Poppins',
                            fontSize: 18),
                      ),
                    ],
                  ),
                  //icon
                  ElevatedButton(
                    onPressed: () {
                      showNotificationDialog();
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(12), // Button border radius
                      ),
                      elevation: 15, // Set the elevation (adjust as needed)
                      shadowColor:
                          Colors.black.withOpacity(1), // Set the shadow color
                    ),
                    child: Icon(
                      Icons.notifications_active,
                      color: Colors.indigo,
                    ),
                  )
                ],
              ),
            ),

            // tanggal hari ini
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.8),
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
            ),
            // menu utama
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    // caption menu utama
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Menu Utama",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Poppins'),
                        )
                      ],
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    //icon
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              _buildMenuButton(
                                  Icons.book,
                                  () =>
                                      // go to class list page
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ListKelasEbook())),
                                  Colors.blue),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "E-Book",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontSize: 12),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              _buildMenuButton(
                                  Icons.task, () => null, Colors.orange),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "E-Task",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontSize: 12),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              _buildMenuButton(
                                  Icons.checklist, () => null, Colors.green),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Live Exam",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontSize: 12),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              _buildMenuButton(Icons.list_alt_rounded,
                                  () => null, Colors.red),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "E-Report",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontSize: 12),
                              )
                            ],
                          ),
                        ]),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 35,
            ),

            //expanded
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 15,
                    )
                  ],
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0))),
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Laporan rata-rata nilai ",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.indigo,
                                fontSize: 20),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        width: double.infinity,
                        height: 250,
                        child: LineChart(
                          LineChartData(
                              minY: 75,
                              maxY: 100,
                              borderData: FlBorderData(show: false),
                              lineBarsData: [
                                LineChartBarData(
                                  barWidth: 5,
                                  isCurved: true,
                                  color: Colors.green[300],
                                  
                                  spots: [
                                    FlSpot(2, 83),
                                    FlSpot(4, 84),
                                    FlSpot(6, 84),
                                    FlSpot(8, 85),
                                    FlSpot(10, 85),
                                    FlSpot(12, 86),
                                    FlSpot(14, 87),
                                    FlSpot(16, 89),
                                    FlSpot(17, 89),
                                    FlSpot(18, 90),
                                    FlSpot(19, 91),
                                    FlSpot(20, 93),
                                  ],
                                ),
                              ],
                              titlesData: FlTitlesData(
                                  topTitles: AxisTitles(
                                      axisNameWidget: Text('Peforma/Bulan')))),
                        ),
                      )
                    ],
                  )),
            ))
          ],
        ));
  }
}
