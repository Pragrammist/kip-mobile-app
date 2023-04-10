import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:kip_mobile/models/film_selection.dart';
import 'package:kip_mobile/models/film_short.dart';
import 'package:kip_mobile/models/person_short.dart';
import 'package:kip_mobile/models/person_type.dart';
import 'package:kip_mobile/models/search_menu_content.dart';

final dio = Dio();

class SearchViewModel extends ChangeNotifier {
  SearchMenuContentModel? searchMenuContentModel;
  bool loading = false;

  void getSearchPage() async {
    loading = true;
    Response response = await dio.get("http://localhost:5106/searchcontent");
    searchMenuContentModel = SearchMenuContentModel.fromJson(response.data);
    loading = false;

    notifyListeners();
  }
}
