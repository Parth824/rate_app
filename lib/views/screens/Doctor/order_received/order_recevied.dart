import 'package:flutter/material.dart';
import 'package:rentapp/size_config.dart';

import '../../../../globals.dart';

class OrderReceivedPage extends StatefulWidget {
  const OrderReceivedPage({super.key});

  static String routeName = '/order_received';

  @override
  State<OrderReceivedPage> createState() => _OrderReceivedPageState();
}

class _OrderReceivedPageState extends State<OrderReceivedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text("Order Received",style: TextStyle(color: Colors.white),),
      ),
      body: Container(
        height: SizeConfig.screenHeight,
        width: SizeConfig.screenWidth,
        padding:
         EdgeInsets.all(getProportionateScreenHeight(10),),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ...Items.map(
                    (e) => Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      decoration:  BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(2, 2),
                            color: Colors.black26,
                          ),
                        ],
                        color: Color(0xffB3E6FF),
                        borderRadius: BorderRadius.all(
                          Radius.circular(getProportionateScreenHeight(10),),
                        ),
                      ),
                      height: SizeConfig.screenHeight * 0.0847,
                      width: SizeConfig.screenWidth,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            flex: 2,
                            child: SizedBox(
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(getProportionateScreenHeight(10)),topLeft: Radius.circular(getProportionateScreenHeight(10),),),
                                child: Image.network(
                                  e["image"],
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Center(
                                  child: Text(
                                    e["printer_name"],
                                    style:TextStyle(
                                      color: Colors.black,
                                        fontSize: getProportionateScreenHeight(15),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    e["price"],
                                    style:TextStyle(
                                        color: Colors.black,
                                        fontSize: getProportionateScreenHeight(14),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                              flex: 2,
                              child: Center(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Center(child: Text("Confirm")),
                                  style: ElevatedButton.styleFrom(primary: Colors.green),
                                ),
                              )
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(12),
                    ),
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
