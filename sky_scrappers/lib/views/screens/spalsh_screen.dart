import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(),
              child: Container(
                alignment: Alignment.center,
                child: Image(
                  image: AssetImage('assets/images/image-removebg-preview.png'),
                ),
                height: 500,
                width: 430,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(190),
                      bottomRight: Radius.circular(190),
                    )),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            CupertinoActivityIndicator(radius: 16),
            SizedBox(
              height: 130,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).popAndPushNamed("Home_page");
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "प्रारंभः",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}