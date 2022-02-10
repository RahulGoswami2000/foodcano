import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodcano/colors/AppColor.dart';

class TrendingFoodBody extends StatefulWidget {
  const TrendingFoodBody({Key? key}) : super(key: key);

  @override
  _TrendingFoodBodyState createState() => _TrendingFoodBodyState();
}

class _TrendingFoodBodyState extends State<TrendingFoodBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.blueGrey,
      child: PageView.builder(
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
          ),
        )
      ],
    );
  }
}
