import 'dart:convert';
import 'package:http/http.dart' as http;

//BaseUrl for physycal mobile with ipconf
class ApiService {
  final String _baseUrl = 'http://0.0.0.0:8081/v1';

  Future<void> getLatestBlockNumber() async {
    final response =
        await http.get(Uri.parse('$_baseUrl/block-number'));
    if (response.statusCode == 200) {
      print(response.body);
      return jsonDecode(response.body);
    } else {
      print(response.statusCode);
      throw Exception('Failed to load');
    }
  }

  
}
