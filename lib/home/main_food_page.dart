import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodcano/home/trending_food_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  _MainFoodPageState createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: TrendingFoodBody(),
    );
  }
}
