import 'package:http/http.dart' as http;

import 'dart:convert';

import 'package:meetlove/model/fake_face.dart';

Future<FakeFace?> requestFakeFaceImg() async {
  final response = await http.get(Uri.parse("https://fakeface.rest/face/json"));
  if (response.statusCode == 200) {
    print("body: ${response.body}");
    return FakeFace.fromJson(jsonDecode(response.body));
  } else {
    return null;
  }
}
