import 'package:flutter/material.dart';
class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  static const String _title = 'Forgot Password';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const ForgotPasswordPageUI(),
      ),
    );
  }
}

class ForgotPasswordPageUI extends StatefulWidget {
  const ForgotPasswordPageUI({Key? key}) : super(key: key);

  @override
  _ForgotPasswordPageUIState createState() => _ForgotPasswordPageUIState();
}

class _ForgotPasswordPageUIState extends State<ForgotPasswordPageUI> {
  TextEditingController emailcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child:ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Enter Your Email Address where we can send you the link to reset the password',
                  style: TextStyle(fontSize: 16),
                  textAlign:TextAlign.center,
                )),

            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                keyboardType:TextInputType.emailAddress,
                textInputAction: TextInputAction.send,
                controller: emailcontroller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email Address',
                ),
              ),
            ),

            Container(
                height: 50,
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Submit'),
                  onPressed: () {
                    print(emailcontroller.text);

                  },
                )
            ),
          ],
        )
    );

  }
}