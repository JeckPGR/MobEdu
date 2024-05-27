import 'package:flutter/material.dart';
import 'component/pages/loginpage.dart';

void main() {
  runApp(EduLocalApp());
}

class EduLocalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EduLocal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  void navigateToLogin(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => LoginRegisterScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4A1C6F),
      body: Container(
        padding: EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10),
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'SourceSansPro',
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Welcome to\n',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20.0,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  TextSpan(
                    text: 'EduLocal',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 45.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/image/image2.png',
              height: 360,
            ),
            const Text(
              "Find and join classes that ignite your passion and fit your pace. Explore. Learn. Grow!",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color.fromARGB(191, 255, 255, 255)),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: IconButton(
                icon: const Icon(Icons.arrow_forward, color: Colors.white),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LoginRegisterScreen()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
