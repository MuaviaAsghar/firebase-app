import 'dart:convert';
import 'package:http/http.dart' as http;

import 'apimodel.dart';

Future<void> postApi(name, email, username) async {
  final url = apiUrl;
  final todo = EmailAndPassword(name: name, email: email, username: username);
  final body = todo.toJson();

  final uri = Uri.parse(url);
  http.post(uri,
      body: jsonEncode(body), headers: {'Content-Type': 'application/json'});
}
