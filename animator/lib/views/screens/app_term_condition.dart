import 'package:flutter/material.dart';

class app_term_condition extends StatefulWidget {
  const app_term_condition({Key? key}) : super(key: key);

  @override
  State<app_term_condition> createState() => _app_term_conditionState();
}

class _app_term_conditionState extends State<app_term_condition> {

  int term_condition = 9;

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      body: Container(
        height: h,
        width: w,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/splash_image.gif"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "The universe is made\nof stories, not of\natoms.",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Terms & Conditions",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "A Terms and Conditions agreement acts as a legal contract between you (the company) and the user. It's where you maintain your rights to exclude users from your app in the event that they abuse your website/app, set out the rules for using your service and note other important details and disclaimers.Having a Terms and Conditions agreement is completely optional. No laws require you to have one. Not even the super-strict and wide-reaching General Data Protection Regulation (GDPR).",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Terms and Conditions agreements are also known as Terms of Service or Terms of Use agreements. These terms are interchangeable, practically speaking.",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                alignment: Alignment.topLeft,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      term_condition += 1;
                    });
                  },
                  child: (term_condition == 9)
                      ? Text(
                    "✅i readed all terms and conditions\n and i accept the terms and conditions",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.cyanAccent,
                    ),
                  )
                      : Container(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_forward_outlined,
                    size: 30,
                  ),
                  color: Colors.white,
                  onPressed: () {
                      if (term_condition == 10) {
                        Navigator.of(context).pushNamed("Home_page");
                      }
                      setState(() {});
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
