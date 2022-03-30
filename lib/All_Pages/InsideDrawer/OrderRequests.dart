import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class OrderRequest extends StatelessWidget {
  const OrderRequest({Key? key}) : super(key: key);

  static const String _title = 'Order Requests';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const OrderRequestUI(),
      ),
    );
  }
}

class OrderRequestUI extends StatefulWidget {
  const OrderRequestUI({Key? key}) : super(key: key);

  @override
  _OrderRequestUIState createState() => _OrderRequestUIState();
}

class _OrderRequestUIState extends State<OrderRequestUI> {
  PickedFile? imageFile;
  final ImagePicker picker = ImagePicker();
  bool _obscureText = true;

  TextEditingController fnameController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  TextEditingController contno_Controller = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var selecteditem = "Student";
  String dropdownvalue = 'Student';

  var items = ['Student', 'College Faculty', 'Chef'];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var lightgrey = Color(0xAFEAE8E8);
    var commonmargin = 20;

    return Padding(
        padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
        child: ListView(children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
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
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Italian Pizza", style: TextStyle(fontSize: 23, color: Colors.white, fontWeight: FontWeight.bold),),

                  Padding(
                      padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                      child: Text("Quantity: 2", style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),)),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child: Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 1,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: InkWell(
                              onTap: () {
                                //Item Description page
                              },
                              child: Container(
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
                                      colors: [Color(0xFF007713), Color(0xFF04FE6C)],
                                    )),

                                child:  Center(child: Text("Confirm", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),)),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: InkWell(
                              onTap: () {
                                //Item Description page
                              },
                              child: Container(
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
                                      colors: [Color(0xFFDA0404), Color(0xFFFE047D)],
                                    )),

                                child:  Center(child: Text("Decline", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),)),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                ],),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
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
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Italian Pizza", style: TextStyle(fontSize: 23, color: Colors.white, fontWeight: FontWeight.bold),),

                    Padding(
                        padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                        child: Text("Quantity: 2", style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),)),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                      child: Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 1,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                              child: InkWell(
                                onTap: () {
                                  //Item Description page
                                },
                                child: Container(
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
                                        colors: [Color(0xFF007713), Color(0xFF04FE6C)],
                                      )),

                                  child:  Center(child: Text("Confirm", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),)),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: InkWell(
                                onTap: () {
                                  //Item Description page
                                },
                                child: Container(
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
                                        colors: [Color(0xFFDA0404), Color(0xFFFE047D)],
                                      )),

                                  child:  Center(child: Text("Decline", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),)),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                  ],),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
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
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Italian Pizza", style: TextStyle(fontSize: 23, color: Colors.white, fontWeight: FontWeight.bold),),

                    Padding(
                        padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                        child: Text("Quantity: 2", style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),)),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                      child: Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 1,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                              child: InkWell(
                                onTap: () {
                                  //Item Description page
                                },
                                child: Container(
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
                                        colors: [Color(0xFF007713), Color(0xFF04FE6C)],
                                      )),

                                  child:  Center(child: Text("Confirm", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),)),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: InkWell(
                                onTap: () {
                                  //Item Description page
                                },
                                child: Container(
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
                                        colors: [Color(0xFFDA0404), Color(0xFFFE047D)],
                                      )),

                                  child:  Center(child: Text("Decline", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),)),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                  ],),
              ),
            ),
          ),





        ]));
  }
}








