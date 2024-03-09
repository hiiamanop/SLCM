import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late Future<UserProfile> _userProfileFuture;

  @override
  void initState() {
    super.initState();
    _userProfileFuture = fetchUserProfile();
  }

  Future<UserProfile> fetchUserProfile() async {
    // Replace this with your database fetching logic
    // For now, I'm just returning a sample user profile
    return Future.delayed(Duration(seconds: 2), () {
      return UserProfile(
        name: 'insert name',
        classInfo: 'insert kelas',
        bio: 'Insert bio here...',
        nis: '1234567890',
        kodeSiswa: '987654321',
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FutureBuilder<UserProfile>(
                    future: _userProfileFuture,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return CircularProgressIndicator(); // Return CircularProgressIndicator centered
                      } else if (snapshot.hasError) {
                        return Center(child: Text('Error: ${snapshot.error}'));
                      } else {
                        final userProfile = snapshot.data!;
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Profile",
                                  style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 18,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            _buildProfileHeader(userProfile),
                            SizedBox(height: 40),
                            _buildSection('Bio', userProfile.bio),
                            SizedBox(height: 20),
                            _buildSection('NIS', userProfile.nis),
                            SizedBox(height: 20),
                            _buildSection('Kode siswa', userProfile.kodeSiswa),
                          ],
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: Positioned(
        bottom: 50.0,
        right: 20.0,
        child: FloatingActionButton(
          onPressed: () {
            _showQRCodeDialog(context);
          },
          backgroundColor: Colors.indigo,
          child: Icon(
            Icons.qr_code,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildProfileHeader(UserProfile userProfile) {
    return Center(
      child: Column(
        children: [
          _buildImage(), // Placeholder for the image
          SizedBox(height: 20),
          _buildName(userProfile.name),
          SizedBox(height: 8),
          _buildClass(userProfile.classInfo),
        ],
      ),
    );
  }

  Widget _buildImage() {
    // Replace this with your image widget
    return Placeholder();
  }

  Widget _buildName(String name) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          name,
          style: TextStyle(
            color: Colors.indigo,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildClass(String classInfo) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          classInfo,
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget _buildSection(String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.indigo,
          ),
        ),
        SizedBox(height: 8),
        Text(
          content,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  void _showQRCodeDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Your QR Code"),
          content: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/qr_code.png'), // Replace with your QR code image
                fit: BoxFit.contain,
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Close"),
            ),
          ],
        );
      },
    );
  }
}

class UserProfile {
  final String name;
  final String classInfo;
  final String bio;
  final String nis;
  final String kodeSiswa;

  UserProfile({
    required this.name,
    required this.classInfo,
    required this.bio,
    required this.nis,
    required this.kodeSiswa,
  });
}
