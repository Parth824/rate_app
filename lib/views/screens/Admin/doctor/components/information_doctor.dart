import 'package:flutter/material.dart';
import 'package:rentapp/size_config.dart';
import 'package:get/get.dart';

import '../controllers/doctor_controller.dart';

class InformationDoctor extends StatefulWidget {
  const InformationDoctor({super.key});

  @override
  State<InformationDoctor> createState() => _InformationDoctorState();
}

class _InformationDoctorState extends State<InformationDoctor> {
  DoctorController doctorController = Get.find<DoctorController>();

  var arg = Get.arguments;
  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);
    return Container(
      height: SizeConfig.screenHeight,
      width: SizeConfig.screenWidth,
      padding: EdgeInsets.all(SizeConfig.screenWidth * 0.0233),
      // color: Colors.grey,
      child: Column(
        children: [
          Container(
            // alignment: Alignment.center,
            height: SizeConfig.screenHeight * 0.35,
            width: SizeConfig.screenWidth,
            padding: EdgeInsets.all(SizeConfig.screenWidth * 0.0233),
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(SizeConfig.screenWidth * 0.0233),
                color: Colors.blue.shade100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: SizeConfig.screenWidth * 0.07,
                      width: SizeConfig.screenWidth * 0.07,
                      child: Image.asset("assets/images/hospital.png"),
                    ),
                    Text(
                      " ${arg["Hospital_Name"]}",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: SizeConfig.screenWidth * 0.042,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Container(
                      height: SizeConfig.screenWidth * 0.07,
                      width: SizeConfig.screenWidth * 0.07,
                      child: Image.asset("assets/images/doctor.png"),
                    ),
                    SizedBox(
                      width: SizeConfig.screenWidth * 0.02,
                    ),
                    Text(
                      "${arg["First_Name"]} ${arg["Last_Name"]}",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: SizeConfig.screenWidth * 0.042,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Container(
                      height: SizeConfig.screenWidth * 0.07,
                      width: SizeConfig.screenWidth * 0.07,
                      child: Image.asset("assets/images/mobile.png"),
                    ),
                    Text(
                      " ${arg["Phone_Number"]}",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: SizeConfig.screenWidth * 0.042,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Container(
                      height: SizeConfig.screenWidth * 0.07,
                      width: SizeConfig.screenWidth * 0.07,
                      child: Image.asset("assets/images/location.png"),
                    ),
                    Text(
                      " ${arg["Address"]}",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: SizeConfig.screenWidth * 0.042,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Container(
                      height: SizeConfig.screenWidth * 0.07,
                      width: SizeConfig.screenWidth * 0.07,
                      child: Image.asset("assets/images/paper.png"),
                    ),
                    Text(
                      " ${arg["Paper_Size"]}",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: SizeConfig.screenWidth * 0.037,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Container(
                      height: SizeConfig.screenWidth * 0.07,
                      width: SizeConfig.screenWidth * 0.07,
                      child: Image.asset("assets/images/rupee.png"),
                    ),
                    Text(
                      " ${arg["Paper_Price"]} INR",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: SizeConfig.screenWidth * 0.037,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
