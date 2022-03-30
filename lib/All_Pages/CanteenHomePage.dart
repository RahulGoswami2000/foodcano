import 'package:flutter/material.dart';
import 'package:foodcano/All_Pages/AddNewDishPage.dart';

//Stateless Widget Example
import 'package:foodcano/All_Pages/Drawer.dart';
import 'package:foodcano/All_Pages/UpdateItemDescriptionPage.dart';

class HomePageUI extends StatefulWidget {
  const HomePageUI({Key? key}) : super(key: key);

  @override
  State<HomePageUI> createState() => _HomePageUIState();
}

class _HomePageUIState extends State<HomePageUI> {

  bool _categoryGeneral = false;
  bool _categorySouthIndian = false;
  bool _categoryChinese = false;
  bool _categoryBreakfast = false;
  bool _categoryDabeli = false;
  bool _categoryVadapao = false;
  bool _categorySandwiches = false;
  bool _categoryPizza = false;



  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My Canteen Menu",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
        ),
        body: ListView(children: <Widget>[
          InkWell(
            onTap: () {
              //Item Description page
              setState(() {
                _categoryPizza = !_categoryPizza;
              });
              print(_categoryPizza);
            },
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          offset: Offset(2.0, 5.0))
                    ],
                    gradient: LinearGradient(
                      colors: [Color(0xFFEE7708), Color(0xFFFEAB04)],
                    )),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                            child: Text(
                              'Pizza',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),

                      Visibility(
                        visible: !_categoryPizza,
                        child: const Icon(Icons.keyboard_arrow_down_rounded,
                          color: Colors.white,),
                      ),

                      Visibility(
                        visible: _categoryPizza,
                        child: const Icon(Icons.keyboard_arrow_up_rounded,
                          color: Colors.white,),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Visibility(
            visible: _categoryPizza,
            child: ListView(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              children: [

                InkWell(
                  onTap: () {
                    //Item Description page
                    Navigator.push(context, MaterialPageRoute(builder: (context) => UpdateItemDescription()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                                offset: Offset(2.0, 5.0))
                          ],
                          gradient: LinearGradient(
                            colors: [Color(0xFFE6D3E0), Color(0xFF81B0DC)],
                          )),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=481&q=80'),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Padding(
                                  padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                                  child: Text(
                                    'Italian Pizza',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                          'This pizza is best for pizza Lovers',
                                          style: TextStyle(
                                              fontSize: 15, color: Colors.black)),

                                      /*Text(
                                   'This Pizza is heavily loaded with cheese and extremely loaded with hardcore topings. Highly Recomended',
                                   style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),)*/
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text('₹150',
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    //Item Description page
                    Navigator.push(context, MaterialPageRoute(builder: (context) => UpdateItemDescription()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                                offset: Offset(2.0, 5.0))
                          ],
                          gradient: LinearGradient(
                            colors: [Color(0xFFE6D3E0), Color(0xFF81B0DC)],
                          )),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=481&q=80'),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Padding(
                                  padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                                  child: Text(
                                    'Italian Pizza',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                          'This pizza is best for pizza Lovers',
                                          style: TextStyle(
                                              fontSize: 15, color: Colors.black)),

                                      /*Text(
                                   'This Pizza is heavily loaded with cheese and extremely loaded with hardcore topings. Highly Recomended',
                                   style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),)*/
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text('₹150',
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

            ],),
          ),


          InkWell(
            onTap: () {
              //Item Description page
              setState(() {
                _categoryGeneral=!_categoryGeneral;
              });
              print(_categoryGeneral);
            },
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          offset: Offset(2.0, 5.0))
                    ],
                    gradient: LinearGradient(
                      colors: [Color(0xFFEE7708), Color(0xFFFEAB04)],
                    )),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                            child: Text(
                              'General',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),

                      Visibility(
                        visible: !_categoryGeneral,
                        child: const Icon(Icons.keyboard_arrow_down_rounded,
                          color: Colors.white,),
                      ),

                      Visibility(
                        visible: _categoryGeneral,
                        child: const Icon(Icons.keyboard_arrow_up_rounded,
                          color: Colors.white,),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Visibility(
            visible: _categoryGeneral,
            child: ListView(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              children: [

                InkWell(
                  onTap: () {
                    //Item Description page
                    Navigator.push(context, MaterialPageRoute(builder: (context) => UpdateItemDescription()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                                offset: Offset(2.0, 5.0))
                          ],
                          gradient: LinearGradient(
                            colors: [Color(0xFFE6D3E0), Color(0xFF81B0DC)],
                          )),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=481&q=80'),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Padding(
                                  padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                                  child: Text(
                                    'Italian Pizza',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                          'This pizza is best for pizza Lovers',
                                          style: TextStyle(
                                              fontSize: 15, color: Colors.black)),

                                      /*Text(
                                   'This Pizza is heavily loaded with cheese and extremely loaded with hardcore topings. Highly Recomended',
                                   style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),)*/
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text('₹150',
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    //Item Description page
                    Navigator.push(context, MaterialPageRoute(builder: (context) => UpdateItemDescription()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                                offset: Offset(2.0, 5.0))
                          ],
                          gradient: LinearGradient(
                            colors: [Color(0xFFE6D3E0), Color(0xFF81B0DC)],
                          )),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=481&q=80'),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Padding(
                                  padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                                  child: Text(
                                    'Italian Pizza',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                          'This pizza is best for pizza Lovers',
                                          style: TextStyle(
                                              fontSize: 15, color: Colors.black)),

                                      /*Text(
                                   'This Pizza is heavily loaded with cheese and extremely loaded with hardcore topings. Highly Recomended',
                                   style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),)*/
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text('₹150',
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

              ],),
          ),

          InkWell(
            onTap: () {
              //Item Description page
              setState(() {
                _categoryChinese=!_categoryChinese;
              });

            },
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          offset: Offset(2.0, 5.0))
                    ],
                    gradient: LinearGradient(
                      colors: [Color(0xFFEE7708), Color(0xFFFEAB04)],
                    )),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                            child: Text(
                              'Chinese',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      Visibility(
                        visible: !_categoryChinese,
                        child: const Icon(Icons.keyboard_arrow_down_rounded,
                          color: Colors.white,),
                      ),

                      Visibility(
                        visible: _categoryChinese,
                        child: const Icon(Icons.keyboard_arrow_up_rounded,
                          color: Colors.white,),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Visibility(
            visible: _categoryChinese,
            child: ListView(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              children: [

                InkWell(
                  onTap: () {
                    //Item Description page
                    Navigator.push(context, MaterialPageRoute(builder: (context) => UpdateItemDescription()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                                offset: Offset(2.0, 5.0))
                          ],
                          gradient: LinearGradient(
                            colors: [Color(0xFFE6D3E0), Color(0xFF81B0DC)],
                          )),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=481&q=80'),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Padding(
                                  padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                                  child: Text(
                                    'Italian Pizza',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                          'This pizza is best for pizza Lovers',
                                          style: TextStyle(
                                              fontSize: 15, color: Colors.black)),

                                      /*Text(
                                   'This Pizza is heavily loaded with cheese and extremely loaded with hardcore topings. Highly Recomended',
                                   style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),)*/
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text('₹150',
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    //Item Description page
                    Navigator.push(context, MaterialPageRoute(builder: (context) => UpdateItemDescription()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                                offset: Offset(2.0, 5.0))
                          ],
                          gradient: LinearGradient(
                            colors: [Color(0xFFE6D3E0), Color(0xFF81B0DC)],
                          )),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=481&q=80'),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Padding(
                                  padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                                  child: Text(
                                    'Italian Pizza',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                          'This pizza is best for pizza Lovers',
                                          style: TextStyle(
                                              fontSize: 15, color: Colors.black)),

                                      /*Text(
                                   'This Pizza is heavily loaded with cheese and extremely loaded with hardcore topings. Highly Recomended',
                                   style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),)*/
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text('₹150',
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

              ],),
          ),


          InkWell(
            onTap: () {
              //Item Description page
              setState(() {
                _categorySouthIndian=!_categorySouthIndian;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          offset: Offset(2.0, 5.0))
                    ],
                    gradient: LinearGradient(
                      colors: [Color(0xFFEE7708), Color(0xFFFEAB04)],
                    )),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                            child: Text(
                              'South Indian',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      Visibility(
                        visible: !_categorySouthIndian,
                        child: const Icon(Icons.keyboard_arrow_down_rounded,
                          color: Colors.white,),
                      ),

                      Visibility(
                        visible: _categorySouthIndian,
                        child: const Icon(Icons.keyboard_arrow_up_rounded,
                          color: Colors.white,),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Visibility(
            visible: _categorySouthIndian,
            child: ListView(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              children: [

                InkWell(
                  onTap: () {
                    //Item Description page
                    Navigator.push(context, MaterialPageRoute(builder: (context) => UpdateItemDescription()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                                offset: Offset(2.0, 5.0))
                          ],
                          gradient: LinearGradient(
                            colors: [Color(0xFFE6D3E0), Color(0xFF81B0DC)],
                          )),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=481&q=80'),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Padding(
                                  padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                                  child: Text(
                                    'Italian Pizza',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                          'This pizza is best for pizza Lovers',
                                          style: TextStyle(
                                              fontSize: 15, color: Colors.black)),

                                      /*Text(
                                   'This Pizza is heavily loaded with cheese and extremely loaded with hardcore topings. Highly Recomended',
                                   style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),)*/
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text('₹150',
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    //Item Description page
                    Navigator.push(context, MaterialPageRoute(builder: (context) => UpdateItemDescription()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                                offset: Offset(2.0, 5.0))
                          ],
                          gradient: LinearGradient(
                            colors: [Color(0xFFE6D3E0), Color(0xFF81B0DC)],
                          )),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=481&q=80'),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Padding(
                                  padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                                  child: Text(
                                    'Italian Pizza',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                          'This pizza is best for pizza Lovers',
                                          style: TextStyle(
                                              fontSize: 15, color: Colors.black)),

                                      /*Text(
                                   'This Pizza is heavily loaded with cheese and extremely loaded with hardcore topings. Highly Recomended',
                                   style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),)*/
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text('₹150',
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

              ],),
          ),


        ]),
        floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            //Add New Dish page
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AddnewItem()));
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.pink,
        ),
        drawer: MyDrawer(),
      ),
    );

  }

  }
