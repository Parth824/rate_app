import 'package:flutter/material.dart';
import 'package:rentapp/views/screens/Admin/totalcomplains/controllers/total_complain_controller.dart';

import '../../../../size_config.dart';
import 'package:get/get.dart';

class TotalComplainsPage extends StatefulWidget {
  const TotalComplainsPage({super.key});

  static String routeName = '/totalcomplains';

  @override
  State<TotalComplainsPage> createState() => _TotalComplainsPageState();
}

class _TotalComplainsPageState extends State<TotalComplainsPage> {
  ComplainController complainController = Get.put(ComplainController());

  @override
  void initState() {
    getdata();
    super.initState();
  }

  getdata() async {
    await complainController.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Obx(() {
        return (complainController.complainlist.value.isNotEmpty)
            ? ListView.builder(
                itemCount: complainController.complainlist.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 9.0, right: 9, bottom: 9, top: 8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: SizeConfig.screenHeight * .15,
                                  width: SizeConfig.screenWidth * .30,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(11),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(11),
                                    child: Image.network(
                                      "https://udservice.shop/Upload/${complainController.complainlist[index]['Image']}",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 9,
                            ),
                            Container(
                              width: SizeConfig.screenWidth * .55,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    complainController.complainlist[index]
                                        ['Printer_Name'],
                                    style: TextStyle(
                                        fontSize: 20,
                                        letterSpacing: 1,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    complainController.complainlist[index]
                                        ['Description'],
                                    style: TextStyle(
                                        fontSize: 20,
                                        letterSpacing: 1,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                })
            : Center(
                child: CircularProgressIndicator(),
              );
      }),
    );
  }
}
