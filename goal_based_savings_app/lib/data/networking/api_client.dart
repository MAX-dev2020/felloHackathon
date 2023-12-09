import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiClient {
  final http.Client httpClient;
  final String baseUrl;

  ApiClient({
    required this.httpClient,
    this.baseUrl = 'http://192.168.0.135:3001/',
  });

  Future<dynamic> get(String path) async {
    final response = await httpClient.get(Uri.parse('$baseUrl$path'));
    // print(response.body);
    if (response.statusCode != 200) {
      throw Exception('Failed to load data!');
    }

    return response.body;
  }
}
