import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:foodcano/colors/AppColor.dart';
import 'package:foodcano/home/main_food_page.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

      home: SplashScreen()
      // Scaffold(
      //   appBar: AppBar(
      //       title: Text("FoodCano"
      //           // style: TextStyle(fontFamily: 'Comforter'),
      //           ),
      //       // theme : ThemeData(fontFamily: 'Bebas Neue Regular'),
      //       backgroundColor: AppColors.mainColor,
      //       elevation: 5,
      //       actions: <Widget>[
      //         IconButton(
      //           icon: Icon(
      //             Icons.shopping_cart_rounded,
      //           ),
      //           onPressed: () {},
      //         )
      //       ]),
      //   body: SplashScreen(),
      // ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {
  List colors= [AppColors.iconColor3, AppColors.mainColor,AppColors.yellowColor,AppColors.iconColor2];
  Random random =new Random();
  int index=0;
  void changeIndex(){
    setState(() => index =random.nextInt(4));
  }
  void selectColor(){
    changeIndex();
    color: colors[index];
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
    selectColor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colors[index],
      // backgroundColor: AppColors.mainColor,
      // Random random=new Random();
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/image/FoodCano-2.png"),
              fit: BoxFit.cover),

        ),
      ),
    );
  }

  void startTimer() {
    Timer(Duration(seconds: 3), () {
      navigateUser(); //It will redirect  after 3 seconds
    });
  }
  void navigateUser() async{
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // var status = prefs.getBool('isLoggedIn') ?? false;
    // print(status);
    // if (status) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainFoodPage(),));
    // } else {
    //   Navigator.pushNamed(context, "/Login");
    // }
    // MainFoodPage();
  }
}

