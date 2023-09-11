// import 'package:flutter/material.dart';
// import 'package:rent_app1/globals.dart';
// import 'package:rent_app1/size_config.dart';
//
// class TotalSalesPage extends StatefulWidget {
//   const TotalSalesPage({super.key});
//
//   static String routeName = '/totalsales';
//
//   @override
//   State<TotalSalesPage> createState() => _TotalSalesPageState();
// }
//
// class _TotalSalesPageState extends State<TotalSalesPage> {
//   @override
//   Widget build(BuildContext context) {
//     SizeConfig().init(context);
//     return Scaffold(
//       body: Container(
//         height: SizeConfig.screenHeight,
//         width: SizeConfig.screenWidth,
//         padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(7)),
//         child: Column(children: [
//           SizedBox(height: SizeConfig.screenHeight*0.01,),
//           ...Sales.map((e) => Card(
//                 color: Colors.blue.shade100,
//                 child: ListTile(
//                   isThreeLine: true,
//                   title: Text(
//                     e["hospital"],
//                     style: TextStyle(
//                         fontSize: SizeConfig.screenWidth * 0.042,
//                         fontWeight: FontWeight.w600),
//                   ),
//                   subtitle: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Invoice No. ${e["invoice"]}",
//                         style: TextStyle(
//                             fontSize: SizeConfig.screenWidth * 0.042,
//                             fontWeight: FontWeight.w500),
//                       ),
//                       Text(
//                         e["date"],
//                         style: TextStyle(
//                             fontSize: SizeConfig.screenWidth * 0.042,
//                             fontWeight: FontWeight.w500),
//                       ),
//                     ],
//                   ),
//                   trailing: Container(
//                     height: SizeConfig.screenHeight,
//                     child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
//                       Text(
//                         "Rs.${e["amount"]}.00",
//                         style: TextStyle(
//                           color: Colors.black,
//                             fontSize: SizeConfig.screenWidth * 0.042,
//                             fontWeight: FontWeight.w500),
//                       ),
//                       (e["status"] == "Pending")
//                           ? Container(
//                               alignment: Alignment.center,
//                               height: SizeConfig.screenWidth * 0.075,
//                               width: SizeConfig.screenWidth * 0.25,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(
//                                       SizeConfig.screenWidth * 0.02),
//                                   color: Colors.red),
//                               child: Center(
//                                 child: Text(
//                                   "Pending",
//                                   style: TextStyle(
//                                       fontSize: SizeConfig.screenWidth * 0.042,
//                                       // letterSpacing: 2,
//                                       fontWeight: FontWeight.w500),
//                                 ),
//                               ),
//                             )
//                           : Container(
//                               alignment: Alignment.center,
//                               height: SizeConfig.screenWidth * 0.075,
//                               width: SizeConfig.screenWidth * 0.25,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(
//                                       SizeConfig.screenWidth * 0.02),
//                                   color: Colors.green),
//                               child: Text(
//                                 "Received",
//                                 style: TextStyle(
//                                   fontSize: SizeConfig.screenWidth * 0.042,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                             )
//                     ]),
//                   ),
//                 ),
//               ))
//         ]),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../components/default_button.dart';
import '../../../../size_config.dart';
import '../../Employee/dailyexpenses/expenses_data.dart';

class SalesReportPage extends StatefulWidget {
  const SalesReportPage({super.key});

  static String routeName = '/salesreport';

  @override
  State<SalesReportPage> createState() => _SalesReportPageState();
}

class _SalesReportPageState extends State<SalesReportPage> {

  DateTime? _selectedDate1;
  DateTime? _selectedDate2;
  TextEditingController _textEditingController1 = TextEditingController();
  TextEditingController _textEditingController2 = TextEditingController();
  TextEditingController _searchEditingController = TextEditingController();
  String? date1;
  String? date2;
  String? search;

  List<Map<String, dynamic>> salesList = [
    {
      'buy_name': 'Harshil Aslaliya',
      'i_no': '500',
      'date': '01-08-2023',
      'rate': '5000.00',
      'quantity': '400',
      'total': '5600.00',
    },{
      'buy_name': 'Harshil Aslaliya',
      'i_no': '500',
      'date': '01-08-2023',
      'rate': '5000.00',
      'quantity': '400',
      'total': '5600.00',
    },{
      'buy_name': 'Harshil Aslaliya',
      'i_no': '500',
      'date': '01-08-2023',
      'rate': '5000.00',
      'quantity': '400',
      'total': '5600.00',
    },{
      'buy_name': 'Harshil Aslaliya',
      'i_no': '500',
      'date': '01-08-2023',
      'rate': '5000.00',
      'quantity': '400',
      'total': '5600.00',
    },{
      'buy_name': 'Harshil Aslaliya',
      'i_no': '500',
      'date': '01-08-2023',
      'rate': '5000.00',
      'quantity': '400',
      'total': '5600.00',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: SizeConfig.screenHeight,
        width: SizeConfig.screenWidth,
        color: Colors.grey.shade100,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(getProportionateScreenHeight(12)),
                height: SizeConfig.screenHeight * 0.08,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius:
                    BorderRadius.circular(getProportionateScreenHeight(15))),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "FROM : ",
                        style: TextStyle(
                            fontSize: getProportionateScreenHeight(16),
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight * 0.05,
                        width: SizeConfig.screenWidth * 0.26,
                        child: Center(
                          child: TextFormField(
                            controller: _textEditingController1,
                            onSaved: (val) {
                              date1 = val;
                            },
                            validator: (val) {
                              if (val!.isEmpty) {}
                              return null;
                            },
                            onTap: () async {
                              DateTime? newSelectedDate = await showDatePicker(
                                context: context,
                                initialDate: _selectedDate1 != null
                                    ? _selectedDate1!
                                    : DateTime.now(),
                                firstDate: DateTime(2000),
                                lastDate: DateTime(2040),
                              );

                              if (newSelectedDate != null) {
                                _selectedDate1 = newSelectedDate;
                                _textEditingController1
                                  ..text = DateFormat("yyyy-MM-dd")
                                      .format(_selectedDate1!)
                                  ..selection = TextSelection.fromPosition(
                                      TextPosition(
                                          offset:
                                          _textEditingController1.text.length,
                                          affinity: TextAffinity.upstream));
                              }
                            },
                            focusNode: AlwaysDisabledFocusNode(),
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: getProportionateScreenHeight(8),
                                  horizontal: getProportionateScreenHeight(8)),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    SizeConfig.screenHeight * 0.01),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    SizeConfig.screenHeight * 0.01),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    SizeConfig.screenHeight * 0.01),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: getProportionateScreenHeight(10),
                      ),
                      Text(
                        "TO : ",
                        style: TextStyle(
                            fontSize: getProportionateScreenHeight(16),
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight * 0.05,
                        width: SizeConfig.screenWidth * 0.26,
                        child: Center(
                          child: TextFormField(
                            controller: _textEditingController2,
                            onSaved: (val) {
                              date2 = val;
                            },
                            validator: (val) {
                              if (val!.isEmpty) {}
                              return null;
                            },
                            onTap: () async {
                              DateTime? newSelectedDate = await showDatePicker(
                                context: context,
                                initialDate: _selectedDate2 != null
                                    ? _selectedDate2!
                                    : DateTime.now(),
                                firstDate: DateTime(2000),
                                lastDate: DateTime(2040),
                              );

                              if (newSelectedDate != null) {
                                _selectedDate2 = newSelectedDate;
                                _textEditingController2
                                  ..text = DateFormat("yyyy-MM-dd")
                                      .format(_selectedDate2!)
                                  ..selection = TextSelection.fromPosition(
                                      TextPosition(
                                          offset:
                                          _textEditingController2.text.length,
                                          affinity: TextAffinity.upstream));
                              }
                            },
                            focusNode: AlwaysDisabledFocusNode(),
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: getProportionateScreenHeight(8),
                                  horizontal: getProportionateScreenHeight(8)),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    SizeConfig.screenHeight * 0.01),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    SizeConfig.screenHeight * 0.01),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    SizeConfig.screenHeight * 0.01),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: SizeConfig.screenHeight * 0.06,
                margin: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenHeight(12)),
                child: TextFormField(
                  controller: _searchEditingController,
                  onSaved: (val) {
                    search = val!;
                  },
                  validator: (val) {},
                  onTap: () {},
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        vertical: getProportionateScreenHeight(8),
                        horizontal: getProportionateScreenHeight(8)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius:
                      BorderRadius.circular(SizeConfig.screenHeight * 0.03),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius:
                      BorderRadius.circular(SizeConfig.screenHeight * 0.03),
                    ),
                    border: OutlineInputBorder(
                      borderRadius:
                      BorderRadius.circular(SizeConfig.screenHeight * 0.03),
                    ),
                    prefixIcon: Icon(Icons.search_rounded),
                    hintText: "Search",
                    hintStyle: TextStyle(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: getProportionateScreenHeight(10),
                ),
                height: SizeConfig.screenHeight*0.6,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: salesList.length,
                  itemBuilder: (context, i) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenHeight(12)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: SizeConfig.screenHeight * 0.16,
                            width: SizeConfig.screenWidth * 1,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(
                                        getProportionateScreenHeight(10)),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(
                                            getProportionateScreenHeight(10)),
                                        topRight: Radius.circular(
                                            getProportionateScreenHeight(10)),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              "Buyer Name",
                                              style: TextStyle(
                                                  fontSize:
                                                  getProportionateScreenHeight(
                                                      15),
                                                  color: Colors.grey),
                                            ),
                                            Text(
                                              "${salesList[i]['buy_name']}",
                                              style: TextStyle(
                                                  fontSize:
                                                  getProportionateScreenHeight(
                                                      14),
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              "Invoice No.",
                                              style: TextStyle(
                                                  fontSize:
                                                  getProportionateScreenHeight(
                                                      15),
                                                  color: Colors.grey),
                                            ),
                                            Text(
                                              "${salesList[i]['i_no']}",
                                              style: TextStyle(
                                                  fontSize:
                                                  getProportionateScreenHeight(
                                                      14),
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              "Date",
                                              style: TextStyle(
                                                  fontSize:
                                                  getProportionateScreenHeight(
                                                      15),
                                                  color: Colors.grey),
                                            ),
                                            Text(
                                              "${salesList[i]['date']}",
                                              style: TextStyle(
                                                  fontSize:
                                                  getProportionateScreenHeight(
                                                      14),
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(
                                        getProportionateScreenHeight(10)),
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(
                                            getProportionateScreenHeight(10)),
                                        bottomRight: Radius.circular(
                                            getProportionateScreenHeight(10)),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              "Rate",
                                              style: TextStyle(
                                                  fontSize:
                                                  getProportionateScreenHeight(
                                                      15),
                                                  color: Colors.grey),
                                            ),
                                            Text(
                                              "${salesList[i]['rate']}",
                                              style: TextStyle(
                                                  fontSize:
                                                  getProportionateScreenHeight(
                                                      14),
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              "Quantity",
                                              style: TextStyle(
                                                  fontSize:
                                                  getProportionateScreenHeight(
                                                      15),
                                                  color: Colors.grey),
                                            ),
                                            Text(
                                              "${salesList[i]['quantity']}",
                                              style: TextStyle(
                                                  fontSize:
                                                  getProportionateScreenHeight(
                                                      14),
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: SizeConfig.screenWidth * 0.0,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              "Total Amt.",
                                              style: TextStyle(
                                                  fontSize:
                                                  getProportionateScreenHeight(
                                                      15),
                                                  color: Colors.grey),
                                            ),
                                            Text(
                                              "${salesList[i]['total']}",
                                              style: TextStyle(
                                                  fontSize:
                                                  getProportionateScreenHeight(
                                                      14),
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: SizeConfig.screenHeight * 0.02,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                height: SizeConfig.screenHeight*0.07,
                margin: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenHeight(12),
                  vertical: getProportionateScreenHeight(15),
                ),
                child: DefaultButton(text: "Genrate", press: () {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
