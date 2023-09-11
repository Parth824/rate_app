import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class AddItemController extends GetxController {
  RxList addItemlist = [].obs;

  getData() async {
    http.Response response = await http.get(
      Uri.parse("https://udservice.shop/Api/add_get_product_api.php"),
    );

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      print(data);
      addItemlist.value = data;
    }
  }

}