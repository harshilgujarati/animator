import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController{
  int intialIndex = 0;

  PageController pageController = PageController();

  Map<String,dynamic>? selectedCategory;

  void gotAddCategory({required Map<String,dynamic> data}){
    intialIndex = 2;
    selectedCategory = data;
    pageController.animateToPage(3, duration: Duration(milliseconds: 900), curve:Curves.easeInOut);
    update();
  }
}