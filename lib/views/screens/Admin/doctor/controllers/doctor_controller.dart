import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class DoctorController extends GetxController {
  RxList doctorlist = [].obs;

  getData() async {
    http.Response response = await http.get(
      Uri.parse("https://udservice.shop/Api/add_get_doctor_api.php"),
    );

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      print(data);
      doctorlist.value = data;
    }
  }
}