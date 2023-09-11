import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ComplainController extends GetxController {
  RxList complainlist = [].obs;

  getData() async {
    http.Response response = await http.get(
      Uri.parse("https://udservice.shop/Api/add_get_complain_api.php"),
    );

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      print(data);
      complainlist.value = data;
    }
  }

}