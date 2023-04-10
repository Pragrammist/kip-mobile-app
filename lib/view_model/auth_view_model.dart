import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

final dio = Dio();

class AuthViewModel extends ChangeNotifier {
  void sendEmail() async {
    Response response = await dio.post("http://localhost:5100/auth/email");
    print(response.data.toString());
  }
}
