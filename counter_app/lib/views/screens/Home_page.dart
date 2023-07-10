import 'package:counter_app/componets/Add_Spending.dart';
import 'package:counter_app/componets/add_category_componets.dart';
import 'package:counter_app/componets/edit_category_componets.dart';
import 'package:counter_app/controller/navigationcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../componets/spending_componets.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  int PageNumber = 0;
  PageController pageController = PageController();
  List<Widget> Pages = [
    spending_page(),
    add_spending_page(),

    Add_category_page(),
  ];

  NavigationController navigationController = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          "Budget Traker App",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 26,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              (Get.isDarkMode)
                  ? Get.changeTheme(ThemeData.light(useMaterial3: true))
                  : Get.changeTheme(ThemeData.dark(useMaterial3: true));
            },
            icon: Icon(Icons.sunny,size: 30,),
          )
        ],
        backgroundColor: Colors.blue,
      ),
      body: PageView(
        children: Pages,
        controller: navigationController.pageController,
        onPageChanged: (value) {
          setState(() {
            navigationController.intialIndex = value;
          });
        },
      ),
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(
              icon: Icon(Icons.card_travel_rounded), label: "Add Speding"),
          NavigationDestination(
              icon: Icon(Icons.category_rounded), label: "Spending"),
        ],
          NavigationDestination(
              icon: Icon(Icons.category_rounded), label: "Edit Category"),
          NavigationDestination(
              icon: Icon(Icons.category_rounded), label: "Add"),
        ],
        onDestinationSelected: (val) {
          navigationController.intialIndex = val;
          navigationController.pageController.animateToPage(val,
              duration: Duration(milliseconds: 400), curve: Curves.bounceInOut);
          setState(() {});
        },
        selectedIndex: navigationController.intialIndex,
      ),
    );
  }
}
