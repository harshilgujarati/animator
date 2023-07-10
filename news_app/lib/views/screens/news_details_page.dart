import 'package:flutter/material.dart';

class news_details_page extends StatefulWidget {
  const news_details_page({Key? key}) : super(key: key);

  @override
  State<news_details_page> createState() => _news_details_pageState();
}

class _news_details_pageState extends State<news_details_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "News Title",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.sunny,
              size: 30,
            ),
          )
        ],
        backgroundColor: Colors.orange,
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/wll.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                height: 300,
                width: 320,
                child: Image.asset(
                  "assets/images/bf735da9e11a1fd910c8cf0a682f8015.png",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Details :",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                height: 70,
                width: 340,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    "The Board of Control for Cricket in India (BCCI) & adidas has today announced a brand-new partnership as the kit sponsor for the BCCI. The contract, which runs through to March 2028, will give adidas exclusive rights for manufacturing kit across all formats of the game. adidas will be the sole supplier for all match, training & travel wear for the BCCI- including the men’s, women’s & youth teams. Starting June 2023, Team India will be seen in the three stripes for the very first time and will debut their new kit during the World Test Championship Finals.",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue.shade300,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Description :",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                height: 170,
                width: 340,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    "The Board of Control for Cricket in India (BCCI) & adidas has for the very first time and will debut their new kit during the World Test Championship Finals.",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.green.shade300,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Author :",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                height: 70,
                width: 340,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    "ANI",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.red.shade300,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "category :",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                height: 70,
                width: 340,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    "sports",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.purple.shade300,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
