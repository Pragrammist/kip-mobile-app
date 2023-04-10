import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:kip_mobile/models/film_release_type.dart';
import 'package:kip_mobile/models/film_selection.dart';
import 'package:kip_mobile/models/film_short.dart';
import 'package:kip_mobile/models/media_content.dart';
import 'package:kip_mobile/models/trailer.dart';

final dio = Dio();

class MediaViewModel extends ChangeNotifier {
  MediaContentModel? mediaContentModel;
  bool loading = false;

  void getMediaPage() async {
    loading = true;
    Response response = await dio.get("http://localhost:5106/media");
    print(response.data);
    mediaContentModel = MediaContentModel.fromJson(response.data);
    loading = false;

    notifyListeners();
  }
}
