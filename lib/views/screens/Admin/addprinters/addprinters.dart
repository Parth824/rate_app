import 'package:flutter/material.dart';
import 'package:rentapp/views/screens/Admin/addprinters/addprinter_alert.dart';
import 'package:rentapp/views/screens/Admin/addprinters/controllers/addprinter_controller.dart';
import 'package:rentapp/views/screens/Admin/addprinters/tab_screen/basic_detail.dart';
import 'package:rentapp/views/screens/Admin/addprinters/tab_screen/optional_detail.dart';

import '../../../../globals.dart';
import '../../../../size_config.dart';
import '../expense/add_expense_alert.dart';
import 'package:get/get.dart';

class AddPrinterPage extends StatefulWidget {
  const AddPrinterPage({super.key});

  static String routeName = '/additems';

  @override
  State<AddPrinterPage> createState() => _AddPrinterPageState();
}

class _AddPrinterPageState extends State<AddPrinterPage> {
  AddItemController addItemController = Get.put(AddItemController());

  @override
  void initState() {
    getdata();
    super.initState();
  }

  getdata() async {
    await addItemController.getData();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding:  EdgeInsets.only(top: getProportionateScreenHeight(5),right: getProportionateScreenHeight(10),left: getProportionateScreenHeight(10)),

                  child: TextFormField(
                    decoration: InputDecoration(
                      focusColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Item Name",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: getProportionateScreenHeight(18),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(10),),
                // Container(
                //   color: Colors.grey[200],
                //   child: TabBar(
                //     indicatorColor: Colors.blue,
                //     tabs: [
                //       Tab(
                //         child: Text(
                //           "Basic Details",
                //           style: TextStyle(
                //               color: Colors.grey[600], fontSize: getProportionateScreenHeight(18)),
                //         ),
                //       ),
                //       Tab(
                //         child: Text(
                //           "Optional Details",
                //           style: TextStyle(
                //               color: Colors.grey[600], fontSize: getProportionateScreenHeight(18)),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
            Expanded(
              flex: 14,
              child: Container(
                // height: MediaQuery.of(context).size.height,
                child:  BasicDetails(),
                // child: TabBarView(
                //   children: [
                //     Center(
                //       child:,
                //     ),
                //     Center(
                //       child: Optional_Details(),
                //     ),
                //   ],
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
