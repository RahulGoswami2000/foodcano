import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodcano/All_Pages/CanteenHomePage.dart';
import 'package:foodcano/All_Pages/SignupPage.dart';

import 'ForgotPasswordPage.dart';
import 'CanteenLoginPage.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const String _title = 'Login Page';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        /*appBar: AppBar(title: const Text(_title)),*/
        body: LoginPageUI(),
      ),
    );
  }
}

class LoginPageUI extends StatefulWidget {
  const LoginPageUI({Key? key}) : super(key: key);

  @override
  State<LoginPageUI> createState() => _LoginPageUIState();
}

class _LoginPageUIState extends State<LoginPageUI> {
  bool _obscureText = true;
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    var lightgrey=Color(0xAFEAE8E8);
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Log in',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              width: size.width *0.8,

              decoration: BoxDecoration(
                color: lightgrey,
                borderRadius: BorderRadius.circular(29)
              ),
              padding: const EdgeInsets.all(10),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person, color: Colors.black,),
                    /*border: OutlineInputBorder(),*/
                    labelText: 'User Name',
                  ),
                ),
              ),
            ),



            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              width: size.width *0.8,
              decoration: BoxDecoration(
                  color: lightgrey,
                  borderRadius: BorderRadius.circular(29)
              ),
              padding: const EdgeInsets.all(10),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: TextField(
                  obscureText: _obscureText,
                  controller: passwordController,
                  decoration: InputDecoration(
                    icon: Icon(Icons.lock, color: Colors.black,),
                    suffixIcon: IconButton(
                      icon: Icon(_obscureText
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.black,),
                      onPressed: (){
                        setState(() {
                          _obscureText=!_obscureText;
                        });
                      },
                    ),
                    /*border: OutlineInputBorder(),*/
                    labelText: 'password',
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  //forgot password screen
                  Navigator.push(context,MaterialPageRoute(builder: (context) => ForgotPasswordPage()));
                },
                child: const Text('Forgot Password',style: TextStyle(fontSize: 15, color: Colors.blue),),
              ),
            ),

            const SizedBox(
              height: 50,
            ),




            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0)
              ),
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text(
                      "Login", style: TextStyle(color: Colors.white, fontSize: 15)
                  ),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePageUI()));
                  },
                )
            ),
            Row(
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    //signup screen
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),

            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  //forgot password screen
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                        return CanteenLoginPage();
                      }));
                },
                child: const Text('Are you a Chef??',style: TextStyle(fontSize: 15, color: Colors.green),),
              ),
            ),

          ],
        ));
  }
}
