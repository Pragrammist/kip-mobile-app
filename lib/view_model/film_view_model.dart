import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:kip_mobile/models/film.dart';
import 'package:kip_mobile/models/film_release_type.dart';
import 'package:kip_mobile/models/film_short.dart';
import 'package:kip_mobile/models/film_type.dart';
import 'package:kip_mobile/models/person_short.dart';
import 'package:kip_mobile/models/season.dart';

final dio = Dio();

class FilmViewModel extends ChangeNotifier {
  FilmModel? filmModel;
  bool loading = false;

  void getFilmPage(String id) async {
    loading = true;
    Response response = await dio.get("http://localhost:5106/films/$id");
    filmModel = FilmModel.fromJson(response.data);
    loading = false;

    notifyListeners();
  }
}
