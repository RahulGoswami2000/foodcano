

import 'package:flutter/material.dart';
import 'package:foodcano/All_Pages/LoginPage.dart';
import 'package:foodcano/colors/AppColor.dart';
import 'package:foodcano/home/main_food_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: Text("FoodCano"
                // style: TextStyle(fontFamily: 'Comforter'),
                ),
            // theme : ThemeData(fontFamily: 'Bebas Neue Regular'),
            backgroundColor: AppColors.mainColor,
            elevation: 5,
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.shopping_cart_rounded,
                ),
                onPressed: () {},
              )
            ]),
        body: LoginPage(),
      ),
    );
  }
}
