import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class OrderController extends GetxController {
  RxList Data = [].obs;

  getData() async {
    http.Response response = await http
        .get(Uri.parse("https://udservice.shop/Api/add_get_product_api.php"));

    if (response.statusCode == 200) {
      var rd = jsonDecode(response.body);

      Data.value = rd;
    }
  }
}
