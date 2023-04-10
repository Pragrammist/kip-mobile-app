import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:kip_mobile/models/film_short.dart';
import 'package:kip_mobile/models/person.dart';
import 'package:kip_mobile/models/person_type.dart';

final dio = Dio();

class PersonViewModel extends ChangeNotifier {
  PersonModel? personModel;
  bool loading = false;

  void getPersonPage(String id) async {
    loading = true;
    Response response = await dio.get("http://localhost:5106/persons/$id");
    personModel = PersonModel.fromJson(response.data);
    loading = false;

    notifyListeners();
  }
}
