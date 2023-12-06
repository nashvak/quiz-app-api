import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:quiz_app_api/model/quiz_model.dart';

class ApiCalls {
  static getData() async {
    var response = await http
        .get(Uri.parse("https://nice-lime-hippo-wear.cyclic.app/api/v1/quiz"));
    final decoded = json.decode(response.body) as List;
    print(decoded);

    return decoded.map((e) => Questions.fromJson(e)).toList();
  }
}
