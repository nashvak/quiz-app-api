import 'package:http/http.dart' as http;

class ApiCalls {
  static getQuestions() async {
    var response = await http
        .get(Uri.parse('https://nice-lime-hippo-wear.cyclic.app/api/v1/quiz'));
  }
}
