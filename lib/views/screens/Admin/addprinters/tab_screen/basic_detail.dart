import 'package:flutter/material.dart';
import 'package:rentapp/components/default_button.dart';

import '../../../../../size_config.dart';

class BasicDetails extends StatefulWidget {
  BasicDetails({Key? key}) : super(key: key);

  @override
  State<BasicDetails> createState() => _BasicDetailsState();
}

class _BasicDetailsState extends State<BasicDetails> {
  bool isSwitched = false;

  String dropdownvalue1 = '(% Percent Wise)';
  var items1 = [
    '(% Percent Wise)',
    '(\$ Amount Wise)',
  ];

  String dropdownvalue2 = 'No GST';
  var items2 = [
    'No GST',
    'GST @ 0%',
    'Exempted',
    'Non-GST',
    'GST @ 0.1%',
    'GST @ 0.25%',
    'GST @ 1.5%',
    'GST @ 3%',
    'GST @ 5%',
    'GST @ 6%',
    'GST @ 12%',
    'GST @ 14%',
    'GST @ 18%',
    'GST @ 28%',
    'GST @ 12%',
  ];

  String dropdownvalue3 = '(% Percent Wise)';
  var items3 = [
    '(% Percent Wise)',
    '(Unit Wise)',
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: getProportionateScreenHeight(10),
                        top: getProportionateScreenHeight(12),
                        bottom: getProportionateScreenHeight(12),
                        right: getProportionateScreenHeight(12)),
                    child: Text(
                      "Select Item Types",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: getProportionateScreenHeight(19),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 9,
                      color: Colors.amber,
                      child: Padding(
                        padding:
                            EdgeInsets.all(getProportionateScreenHeight(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Quantity",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: getProportionateScreenHeight(18),
                                  fontWeight: FontWeight.w400),
                            ),
                            Expanded(
                              child: Container(
                                // width: SizeConfig.screenWidth * 0.2, 
                                color: Colors.amber,
                                child: TextField(
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(5),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 9,
                      // width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Padding(
                        padding:
                            EdgeInsets.all(getProportionateScreenHeight(10)),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "HSN",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize:
                                          getProportionateScreenHeight(18),
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            Spacer(),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.search,
                                      color: Colors.grey[400],
                                      size: getProportionateScreenHeight(35),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 9,
                      color: Colors.white,
                      child: Padding(
                        padding:
                            EdgeInsets.all(getProportionateScreenHeight(10)),
                        child: Text(
                          "Sale Price",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: getProportionateScreenHeight(18),
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(5),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 9,
                      color: Colors.white,
                      child: Padding(
                        padding:
                            EdgeInsets.all(getProportionateScreenHeight(10)),
                        child: Text(
                          "Unit",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: getProportionateScreenHeight(18),
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                color: Colors.grey[250],
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: getProportionateScreenHeight(10),
                          top: getProportionateScreenHeight(12),
                          bottom: getProportionateScreenHeight(12),
                          right: getProportionateScreenHeight(12)),
                      child: Text(
                        "Amount",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: getProportionateScreenHeight(18),
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(
                          left: getProportionateScreenHeight(10),
                          top: getProportionateScreenHeight(12),
                          bottom: getProportionateScreenHeight(12),
                          right: getProportionateScreenHeight(12)),
                      child: Text(
                        "\$ 0",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: getProportionateScreenHeight(18),
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 9,
                      color: Colors.white,
                      child: Padding(
                        padding:
                            EdgeInsets.all(getProportionateScreenHeight(10)),
                        child: Text(
                          "Discount",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: getProportionateScreenHeight(18),
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(5),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 9,
                      color: Colors.grey[400],
                      alignment: Alignment.center,
                      child: Padding(
                        padding:
                            EdgeInsets.all(getProportionateScreenHeight(10)),
                        child: DropdownButton(
                          value: dropdownvalue1,
                          icon: Padding(
                            padding: EdgeInsets.only(
                                left: getProportionateScreenHeight(15)),
                            child: Icon(
                              Icons.arrow_drop_down_sharp,
                              size: getProportionateScreenHeight(30),
                            ),
                          ),
                          items: items1.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Container(
                                  width: SizeConfig.screenWidth *0.3,
                                  child: Text(
                                    items,
                                    style: TextStyle(
                                        fontSize:
                                            getProportionateScreenHeight(18),
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        overflow: TextOverflow.ellipsis),
                                  )),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue1 = newValue!;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                color: Colors.grey[250],
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: getProportionateScreenHeight(10),
                          top: getProportionateScreenHeight(12),
                          bottom: getProportionateScreenHeight(12),
                          right: getProportionateScreenHeight(12)),
                      child: Text(
                        "Taxable Amount",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: getProportionateScreenHeight(18),
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(
                          left: getProportionateScreenHeight(10),
                          top: getProportionateScreenHeight(12),
                          bottom: getProportionateScreenHeight(12),
                          right: getProportionateScreenHeight(12)),
                      child: Text(
                        "\$ 0",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: getProportionateScreenHeight(18),
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 9,
                      color: Colors.white,
                      child: Padding(
                        padding:
                            EdgeInsets.all(getProportionateScreenHeight(10)),
                        child: Row(
                          children: [
                            Text(
                              "Tax Inclusive",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: getProportionateScreenHeight(18),
                                  fontWeight: FontWeight.w400),
                            ),
                            Spacer(),
                            Switch(
                              value: isSwitched,
                              activeColor: Colors.blue,
                              onChanged: (value) {
                                print("VALUE : $value");
                                setState(() {
                                  isSwitched = value;
                                });
                              },
                            ),
                            Spacer(),
                            Text(
                              "Tax Exclusive",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: getProportionateScreenHeight(18),
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 12,
                      color: Colors.white,
                      alignment: Alignment.center,
                      child: Padding(
                        padding:
                            EdgeInsets.all(getProportionateScreenHeight(10)),
                        child: Text(
                          "GST (%)",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: getProportionateScreenHeight(18),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(5),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 12,
                      color: Colors.grey[400],
                      alignment: Alignment.center,
                      child: Padding(
                        padding:
                            EdgeInsets.all(getProportionateScreenHeight(10)),
                        child: DropdownButton(
                          value: dropdownvalue2,
                          icon: Padding(
                            padding: EdgeInsets.only(
                                left: getProportionateScreenHeight(15)),
                            child: Icon(
                              Icons.arrow_drop_down_sharp,
                              size: getProportionateScreenHeight(30),
                            ),
                          ),
                          items: items2.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Container(
                                  width: SizeConfig.screenWidth *0.31,
                                  child: Text(
                                    items,
                                    style: TextStyle(
                                        fontSize:
                                            getProportionateScreenHeight(18),
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        overflow: TextOverflow.ellipsis),
                                  )),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue2 = newValue!;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 9,
                      color: Colors.white,
                      child: Padding(
                        padding:
                            EdgeInsets.all(getProportionateScreenHeight(10)),
                        child: Text(
                          "Discount",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: getProportionateScreenHeight(18),
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(5),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 9,
                      color: Colors.grey[400],
                      alignment: Alignment.center,
                      child: Padding(
                        padding:
                            EdgeInsets.all(getProportionateScreenHeight(10)),
                        child: DropdownButton(
                          value: dropdownvalue3,
                          icon: Padding(
                            padding: EdgeInsets.only(
                                left: getProportionateScreenHeight(15)),
                            child: Icon(
                              Icons.arrow_drop_down_sharp,
                              size: getProportionateScreenHeight(30),
                            ),
                          ),
                          items: items3.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Container(
                                  width: SizeConfig.screenWidth *0.31,
                                  child: Text(
                                    items,
                                    style: TextStyle(
                                        fontSize:
                                            getProportionateScreenHeight(18),
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        overflow: TextOverflow.ellipsis),
                                  )),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue3 = newValue!;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                color: Colors.grey[350],
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: getProportionateScreenHeight(10),
                          top: getProportionateScreenHeight(12),
                          bottom: getProportionateScreenHeight(12),
                          right: getProportionateScreenHeight(12)),
                      child: Text(
                        "Total Amount",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: getProportionateScreenHeight(18),
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(
                          left: getProportionateScreenHeight(10),
                          top: getProportionateScreenHeight(12),
                          bottom: getProportionateScreenHeight(12),
                          right: getProportionateScreenHeight(12)),
                      child: Text(
                        "\$ 0",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: getProportionateScreenHeight(18),
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(getProportionateScreenHeight(10)),
                child: DefaultButton(text: "Save", press: () {}),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
