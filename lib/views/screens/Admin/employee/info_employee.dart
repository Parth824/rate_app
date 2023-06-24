import 'package:flutter/material.dart';
import 'package:rentapp/views/screens/Admin/employee/date_emp.dart';

import '../../../../size_config.dart';

List DateData = [];

class InforPage extends StatefulWidget {
  const InforPage({super.key});

  @override
  State<InforPage> createState() => _InforPageState();
}

class _InforPageState extends State<InforPage> {
  DateTime date = DateTime.now();
  bool changeColor = true;

  @override
  Widget build(BuildContext context) {

    dynamic detail = ModalRoute.of(context)!.settings.arguments as dynamic;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "${detail['name']}",
          style: TextStyle(
              fontSize: 20, letterSpacing: 1, fontWeight: FontWeight.w400),
        ),
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => DateList(),settings: RouteSettings(arguments: DateData)));
          }, icon: Icon(Icons.list_alt))
        ],
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                changeColor = false;

                Map<String, dynamic> data = {
                  'day' : date.day,
                  'month' : date.month,
                  'year' : date.year,
                  'attendance' : "P",
                };

                DateData.add(data);
                // Navigator.pushNamed(context, 'ListPage')
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: SizeConfig.screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: (changeColor) ? Colors.red : Colors.green,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text("${date.day} / ${date.month} / ${date.year}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21,color: Colors.white),),
                  Spacer(),
                  (changeColor) ? Text("A",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21,color: Colors.white),) : Text("P",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21,color: Colors.white),),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}