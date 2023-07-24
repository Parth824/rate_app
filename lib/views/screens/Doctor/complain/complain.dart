import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:rentapp/size_config.dart';

class ComplainPage extends StatefulWidget {
  const ComplainPage({Key? key}) : super(key: key);
  static String routeName = "/complain";

  @override
  State<ComplainPage> createState() => _ComplainPageState();
}

class _ComplainPageState extends State<ComplainPage> {
  @override
  File? NozelFile;
  File? imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text("Complain",style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 1.5,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: "Complain",
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getProportionateScreenHeight(25),),),
                prefixIcon: Icon(Icons.newspaper),
                border: OutlineInputBorder(),
              ),
            ),
            Spacer(),
            Container(
                height: MediaQuery.of(context).size.height / 6,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade600,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Container(
                    child: NozelFile == null
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  _getNozelimage();
                                },
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.add,
                                      size: getProportionateScreenHeight(30),
                                    ),
                                    Text(
                                      "Add Nozel",
                                      style: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontSize:
                                            MediaQuery.of(context).size.height /
                                                40,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        : Container(
                            child: Image.file(
                              NozelFile!,
                              fit: BoxFit.cover,
                            ),
                          ))),
            const Spacer(),
            Container(
                height: MediaQuery.of(context).size.height / 6,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Container(
                    child: imageFile == null
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  _getFromGallery();
                                },
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.add,                                      size: getProportionateScreenHeight(30),

                                    ),
                                    Text(
                                      "ADD IMAGE",
                                      style: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontSize:
                                            MediaQuery.of(context).size.height /
                                                40,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        : Container(
                            child: Image.file(
                              imageFile!,
                              fit: BoxFit.cover,
                            ),
                          ))),
            const Spacer(),
            Row(
              children: [
                Spacer(),
                Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.height / 18,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                    color: Colors.red,
                  ),
                  child: const Center(
                    child: Text(
                      "CANCEL",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                    color: Colors.green,
                  ),
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.height / 18,
                  child:  Center(
                    child: Text(
                      "SEND",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _getNozelimage() async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        NozelFile = File(pickedFile.path);
      });
    }
  }

  _getFromGallery() async {
    XFile? pickedFile = await ImagePicker().pickImage(source: 
        ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }
}
