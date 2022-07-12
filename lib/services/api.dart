import 'dart:convert';

import 'package:getx_for_beginners/models/user_res_model.dart';
import 'package:http/http.dart' as http;

class APIService {
  Future<UserResModel> getUsers() async {
    var url = Uri.parse('https://reqres.in/api/users?');
    final res = await http.get(url);
    var data = jsonDecode(res.body);
    return UserResModel.fromJson(data);
  }
}
