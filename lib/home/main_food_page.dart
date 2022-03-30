import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodcano/home/trending_food_body.dart';

import '../colors/AppColor.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  _MainFoodPageState createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
      body: TrendingFoodBody(),
        );
  }
}
