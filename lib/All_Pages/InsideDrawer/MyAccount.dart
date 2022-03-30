import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({Key? key}) : super(key: key);

  static const String _title = 'My Account Details';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyAccountUI(),
      ),
    );
  }
}

class MyAccountUI extends StatefulWidget {
  const MyAccountUI({Key? key}) : super(key: key);

  @override
  _MyAccountUIState createState() => _MyAccountUIState();
}

class _MyAccountUIState extends State<MyAccountUI> {
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
        padding: const EdgeInsets.all(10),
        child: ListView(children: <Widget>[

          imageProfile(),


          Container(
              padding: const EdgeInsets.all(10),
              margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
              child: const Text(
                'Edit Account Details',
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
            width: size.width * 0.8,
            decoration: BoxDecoration(
                color: lightgrey, borderRadius: BorderRadius.circular(29)),
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
                      icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
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
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30.0)),
              margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: const Text("Submit",
                    style: TextStyle(color: Colors.white, fontSize: 15)),
                onPressed: () {
                  print(fnameController.text);
                  print(lnameController.text);
                  print(contno_Controller.text);
                  print(emailController.text);
                  print(passwordController.text);

                },
              )),
        ]));
  }

  void takePhoto(ImageSource source) async {
    final pickedFile = await picker.getImage(
      source: source,
    );
    setState(() {
      imageFile = pickedFile!;

    });
  }

  Widget imageProfile()
  {
    return  Center(
      child: Stack(
        children: [
          CircleAvatar(
            radius: 80.0,
              backgroundImage: (imageFile!=null)?FileImage(File(imageFile!.path)):null

            /*NetworkImage(
                  "https://images.unsplash.com/photo-1531891570158-e71b35a485bc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80")*/
          ),
          Positioned(
            bottom: 20.0,
            right: 20.0,
            child: InkWell(
              onTap: () {
                showModalBottomSheet<void>(
                  // context and builder are
                  // required properties in this widget
                  context: context,
                  builder: (BuildContext context) {
                    // we set up a container inside which
                    // we create center column and display text
                    return Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              'Choose Your Profile Photo',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: FlatButton.icon(
                                    icon: const Icon(Icons.camera),
                                    onPressed: () {
                                      takePhoto(ImageSource.camera);
                                    },
                                    label: const Text('Camera'),
                                  ),
                                ),
                                Expanded(
                                  child: FlatButton.icon(
                                    icon: const Icon(Icons.image),
                                    onPressed: () {
                                      takePhoto(ImageSource.gallery);
                                    },
                                    label: const Text('Gallery'),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: const Icon(
                Icons.camera_alt,
                color: Colors.white,
                size: 29.0,
              ),
            ),
          )
        ],
      ),
    );
  }

}








