import 'package:flutter/material.dart';
import 'package:kip_mobile/models/film_selection.dart';
import 'package:kip_mobile/view/search/category_screen.dart';
import 'package:kip_mobile/view/widget/category_item.dart';

class SearchCategories extends StatelessWidget {
  const SearchCategories({super.key, required this.selections});

  final List<FilmSelectionModel> selections;

  Widget _actionChip(String label, BuildContext context) {
    return ActionChip(
        padding: const EdgeInsets.all(10),
        label: Text(label),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8))),
        backgroundColor: Colors.grey[850],
        shadowColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        onPressed: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => CategoryScreen(
                  selection: selections,
                  title: label,
                ))));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              "Категории",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width - 30,
              child: Wrap(
                spacing: 8,
                children: <Widget>[
                  _actionChip('Фильмы', context),
                  _actionChip('Онлайн-кинотеатр', context),
                  _actionChip('Жанры', context),
                  _actionChip('Страны', context),
                  _actionChip('Годы', context),
                  _actionChip('Критика', context),
                  _actionChip('Сериалы', context),
                  _actionChip('Сборы', context),
                  _actionChip('Премии', context),
                  _actionChip('Направления', context),
                ],
              ))
        ]));
  }
}
