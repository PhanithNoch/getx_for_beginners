import 'dart:convert';

import 'package:get/get.dart';
import 'package:getx_for_beginners/models/user_res_model.dart';
import 'package:getx_for_beginners/services/api.dart';

class CounterController extends GetxController {
  APIService api = APIService();
  RxList<Data> lstUsers = RxList();

  @override
  void onInit() {
    getAllUser();
    super.onInit();
  }

  getAllUser() async {
    final res = api.getUsers().then((value) => lstUsers.value = value.data!);

    print(jsonEncode(res));
  }
}
