import 'dart:convert';

import 'package:http/http.dart' as http;

fetchapi(String url) async {
  http.Response response = await http.get(Uri.parse(url));
  return response.body;
}
