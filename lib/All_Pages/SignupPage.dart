import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  static const String _title = 'SignUp Page';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const SignupPageUI(),
      ),
    );
  }
}

class SignupPageUI extends StatefulWidget {
  const SignupPageUI({Key? key}) : super(key: key);

  @override
  _SignupPageUIState createState() => _SignupPageUIState();
}

class _SignupPageUIState extends State<SignupPageUI> {
  bool _obscureText = true;
  TextEditingController fnameController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  TextEditingController contno_Controller = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    var lightgrey = Color(0xAFEAE8E8);
    var commonmargin= 20;

    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(children: <Widget>[
          Container(
              padding: const EdgeInsets.all(10),
              margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
              child: const Text(
                'Register for an Account',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          Container(
            width: size.width * 0.8,
            margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
            decoration: BoxDecoration(
                color: lightgrey, borderRadius: BorderRadius.circular(29)),
            padding: const EdgeInsets.all(10),
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: Container(
                margin: EdgeInsets.fromLTRB(commonmargin.toDouble(), 0, 0, 0),
                child: TextField(
                  keyboardType: TextInputType.name,
                  controller: fnameController,
                  decoration: const InputDecoration(
                    labelText: 'First Name',
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: size.width * 0.8,
            margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
            decoration: BoxDecoration(
                color: lightgrey, borderRadius: BorderRadius.circular(29)),
            padding: const EdgeInsets.all(10),
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: Container(
                margin: EdgeInsets.fromLTRB(commonmargin.toDouble(), 0, 0, 0),
                child: TextField(
                  keyboardType: TextInputType.name,
                  controller: lnameController,
                  decoration: const InputDecoration(
                    labelText: 'Last Name',
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: size.width * 0.8,
            margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
            decoration: BoxDecoration(
                color: lightgrey, borderRadius: BorderRadius.circular(29)),
            padding: const EdgeInsets.all(10),
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: Container(
                margin: EdgeInsets.fromLTRB(commonmargin.toDouble(), 0, 0, 0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: contno_Controller,
                  decoration: const InputDecoration(
                    labelText: 'Contact Number',
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: size.width * 0.8,
            margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
            decoration: BoxDecoration(
                color: lightgrey, borderRadius: BorderRadius.circular(29)),
            padding: const EdgeInsets.all(10),
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: Container(
                margin: EdgeInsets.fromLTRB(commonmargin.toDouble(), 0, 0, 0),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
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
              child: Container(
                margin: EdgeInsets.fromLTRB(commonmargin.toDouble(), 0, 0, 0),
                child: TextField(
                  obscureText: _obscureText,
                  controller: passwordController,
                  decoration: InputDecoration(
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
          ),

          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0)
              ),
              margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: const Text(
                    "Submit", style: TextStyle(color: Colors.white, fontSize: 15)
                ),
                onPressed: () {
                  print(fnameController.text);
                  print(lnameController.text);
                  print(contno_Controller.text);
                  print(emailController.text);
                  print(passwordController.text);



                },
              )
          ),
        ]));
  }
}