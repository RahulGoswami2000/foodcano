import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodcano/Texts/big_text.dart';
import 'package:foodcano/Texts/small_text.dart';
import 'package:foodcano/colors/AppColor.dart';
import 'package:foodcano/home/item_and_text.dart';

class TrendingFoodBody extends StatefulWidget {
  const TrendingFoodBody({Key? key}) : super(key: key);

  @override
  _TrendingFoodBodyState createState() => _TrendingFoodBodyState();
}

class _TrendingFoodBodyState extends State<TrendingFoodBody> {
  PageController pageController= PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      // color: Colors.blueGrey,
      child: PageView.builder(
        controller: pageController,
          itemCount: 5,
          itemBuilder: (context, index){
        return _buildPageItem(index);
      }),
    );
  }
  Widget _buildPageItem(int index){
    return Stack(
      children: [
        Container(
          height: 180,
          margin: EdgeInsets.only(left: 15, right: 15,top:20 ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: index.isEven?AppColors.yellowColor: Color(0xFFbcd4e6),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "assets/image/slide4.jpg"
              )
            )
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 110,
            margin: EdgeInsets.only(left: 30, right: 30,top:20,bottom: 30 ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
            ),
            child: Container(
              padding: EdgeInsets.only(top: 15, right: 15, left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BIgText(text: "Pizza"),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(5, (index) => Icon(Icons.star, color: AppColors.mainColor,size: 15,))
                      ) ,
                      SizedBox(width: 10,),
                      SmallText(text: "4.5"),
                      SizedBox(width: 10,),
                      SmallText(text: "1000"),
                      SizedBox(width: 10,),
                      SmallText(text: "comments")
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      IconAndText(iconData: Icons.verified_user, text: "100% Safe", iconColor: AppColors.iconColor1),
                      IconAndText(iconData: Icons.local_offer, text: "Offers", iconColor: AppColors.mainColor),
                      IconAndText(iconData: Icons.fastfood, text: "Food", iconColor: AppColors.iconColor2)
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
