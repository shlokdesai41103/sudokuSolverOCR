import 'package:http/http.dart' as http;
import 'numbers.dart';

class Services {
  static const String url = "https://ba86-50-100-148-118.ngrok.io/upload";

  static Future<List<Numbers>> getNumbers() async {
    try {
      final response = await http.get(Uri.parse(url));
      if (200 == response.statusCode) {
        final List<Numbers> numbs =
            numbersFromJson(response.body) as List<Numbers>;
        return numbs;
      } else {
        return <Numbers>[];
      }
    } catch (e) {
      return <Numbers>[];
    }
  }
}
