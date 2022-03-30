import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class AddnewItem extends StatelessWidget {
  const AddnewItem({Key? key}) : super(key: key);

  static const String _title = 'Add a New Item';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const AddnewItemUI(),
      ),
    );
  }
}

class AddnewItemUI extends StatefulWidget {
  const AddnewItemUI({Key? key}) : super(key: key);

  @override
  _AddnewItemUIState createState() => _AddnewItemUIState();
}

class _AddnewItemUIState extends State<AddnewItemUI> {
  bool _obscureText = true;
  TextEditingController itemnameController = TextEditingController();
  TextEditingController itemdescriptionController = TextEditingController();
  TextEditingController itempriceController = TextEditingController();
  PickedFile? imageFile;
  final ImagePicker picker = ImagePicker();


  var selecteditem = "General";
  String dropdownvalue = 'General';

  var items = ['General', 'South Indian', 'Chinese', 'Pizza', 'BreakFast', 'Dabeli', 'Vada-pao', 'Sandwiches'];

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    var lightgrey = Color(0xAFEAE8E8);
    var commonmargin= 20;

    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(children: <Widget>[
          Container(
            width: size.width * 0.8,
            margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
            decoration: BoxDecoration(
                color: lightgrey, borderRadius: BorderRadius.circular(20)),
            padding: const EdgeInsets.all(10),
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: Container(
                margin: EdgeInsets.fromLTRB(commonmargin.toDouble(), 0, 0, 0),
                child: TextField(
                  keyboardType: TextInputType.name,
                  controller: itemnameController,
                  decoration: const InputDecoration(
                    labelText: 'Item Name',
                  ),
                ),
              ),
            ),
          ),

          Container(
            width: size.width * 0.8,
            height: 200,
            margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
            decoration: BoxDecoration(
                color: lightgrey, borderRadius: BorderRadius.circular(20)),
            padding: const EdgeInsets.all(10),
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: Container(
                margin: EdgeInsets.fromLTRB(commonmargin.toDouble(), 0, 0, 0),
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 6,
                  controller: itemdescriptionController,
                  decoration: const InputDecoration(
                    labelText: 'Item Description',
                  ),
                ),
              ),
            ),
          ),

          Container(
              margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: lightgrey),
              child: Container(
                height: 70,
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: Row(
                  children: [
                    const Expanded(
                        child: Text(
                          "Select Food Category: ",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        )
                    ),
                  Expanded(
                    child: DropdownButton(
                      value: dropdownvalue,
                      icon: const Icon(Icons.keyboard_arrow_down,
                          textDirection: TextDirection.rtl),
                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                          this.selecteditem = newValue!;
                        });
                      },
                    ),
                  ),
                  ],),
              )),

          Container(
              margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: lightgrey),
              child: Container(
                height: 70,
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0,15, 0, 0),
                      child: Text(
                        "₹ ",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 25, 0),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          controller: itempriceController,
                          decoration: const InputDecoration(
                            labelText: 'Item Price',
                          ),
                        ),
                      ) ,
                    ),
                  ],),
              )),


          const SizedBox(
            height: 15,
          ),

          Container(
              margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: lightgrey),
              child: Container(
                height: 70,
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0,15, 0, 15),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0,0, 0, 0),
                        child: Text(
                          "Provide Item Images: ",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                      Expanded(child: imageProfile()),
                    ],),
                ),
              )),




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
                  print(itemnameController.text);
                  print(itemdescriptionController.text);
                  print(itempriceController.text);
                  print(selecteditem.toString());



                },
              )
          ),




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
          /*CircleAvatar(
              radius: 80.0,
              backgroundImage: (imageFile!=null)?FileImage(File(imageFile!.path)):null

            *//*NetworkImage(
                  "https://images.unsplash.com/photo-1531891570158-e71b35a485bc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80")*//*
          ),*/
          
          InkWell(
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
                            'Select Item Image from..',
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
              Icons.folder,
              color: Colors.blue,
              size: 49.0,
            ),
          )
        ],
      ),
    );
  }
}