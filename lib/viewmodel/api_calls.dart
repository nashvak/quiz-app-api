import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:quiz_app_api/model/quiz_model.dart';

class ApiCalls {
  // get the questions from the api
  static getData() async {
    var response = await http
        .get(Uri.parse("https://nice-lime-hippo-wear.cyclic.app/api/v1/quiz"));
    if (response.statusCode == 200) {
      final decoded = json.decode(response.body) as List;

      return decoded.map((e) => Questions.fromJson(e)).toList();
    } else {
      throw Exception('something happened');
    }
  }
}
