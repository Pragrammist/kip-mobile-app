import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kip_mobile/models/film_selection.dart';
import 'package:kip_mobile/models/person_short.dart';
import 'package:kip_mobile/models/search_menu_content.dart';
import 'package:kip_mobile/view/layouts/kip_cupertino_page_layout.dart';
import 'package:kip_mobile/view/layouts/kip_page_layout.dart';
import 'package:kip_mobile/view/profile/settings.dart';
import 'package:kip_mobile/view/widget/categories.dart';
import 'package:kip_mobile/view/widget/category_item.dart';
import 'package:kip_mobile/view/widget/censor.dart';
import 'package:kip_mobile/view/widget/custom_list_view.dart';
import 'package:kip_mobile/view/widget/person.dart';
import 'package:kip_mobile/view/widget/person_search.dart';
import 'package:kip_mobile/view/widget/search_result.dart';
import 'package:kip_mobile/view_model/search_view_model.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:provider/provider.dart';

class CustomSearchDelegate extends SearchDelegate {
  @override
  String get searchFieldLabel => 'Films, persons, tv shows';

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      TextButton(
        onPressed: () => close(context, ""),
        child: Text("Close"),
        style: ButtonStyle(
            foregroundColor: MaterialStatePropertyAll(Colors.grey[500])),
      )
    ];
  }

  @override
  ThemeData appBarTheme(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return theme.copyWith(
      accentColor: Colors.red,
      textTheme: theme.textTheme.copyWith(headline6: TextStyle(fontSize: 16)),
      inputDecorationTheme: theme.inputDecorationTheme.copyWith(
        fillColor: Theme.of(context).backgroundColor,
        filled: true,
        isDense: true,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        border: InputBorder.none,
      ),
      textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.white70),
      appBarTheme: theme.appBarTheme.copyWith(
        backgroundColor: Colors.black,
        titleSpacing: 0,
      ),
    );
  }

  // second overwrite to pop out of search menu

  @override
  Widget? buildLeading(BuildContext context) {
    return Icon(Icons.search);
  }

  // third overwrite to show query result

  @override
  Widget buildResults(BuildContext context) {
    return Container(
        color: Colors.black,
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: SearchResult(
                    title: "Райан Гослинг",
                    subtitle: "Ryan gosling",
                    imageUrl:
                        "https://avatars.mds.yandex.net/get-kinopoisk-image/1629390/865d2d0e-bac6-4a78-a0ed-17a87b285069/600x900"));
          },
        ));
  }

  // last overwrite to show the

  // querying process at the runtime

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(child: Text("Начните вводить текст для поиска")),
    );
  }
}

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  _SearchScreen createState() => _SearchScreen();
}

class _SearchScreen extends State<SearchScreen> {
  PreferredSizeWidget _buildSearchTextFieldWidget(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(85), // Set this height
      child: Container(
          color: Colors.black,
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FocusScope(
                    child: Focus(
                        onFocusChange: (focus) => {},
                        child: TextField(
                          onTap: () => showSearch(
                              context: context,
                              delegate: CustomSearchDelegate()),
                          cursorColor: Colors.white70,
                          decoration: InputDecoration(
                              hintText: 'Films, persons, tv shows',
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.white70,
                              ),
                              //suffixIcon: IconButton(
                              //    onPressed: () {},
                              //    icon: Container(
                              //        decoration: BoxDecoration(
                              //            border: Border(
                              //                left: BorderSide(
                              //                    color: Colors.grey[600]!))),
                              //        child: Row(children: [
                              //          SizedBox(width: 6),
                              //          Icon(
                              //            Icons.tune,
                              //            color: Colors.white70,
                              //          )
                              //        ]))),
                              suffixIconColor: Colors.white70,
                              filled: true,
                              fillColor: Theme.of(context).backgroundColor),
                        )))
              ],
            ),
          )),
    );
  }

  Widget _adwiseToLook(List<FilmSelectionModel>? selections) {
    return KipCupertinoPageLayout(
        title: "Советуем",
        body: ListView.builder(
          itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(top: 15),
              child: CategoryItem(
                index: index + 1,
                filmObjects: selections?[index].filmObjects ?? List.empty(),
                title: selections?[index].name ?? "",
                imageUrl: selections?[index].image ?? "",
              )),
          itemCount: selections?.length,
        ));
  }

  Widget _bornToday(BuildContext context, List<PersonShortModel> persons) {
    return KipPageLayout(
        title: "Родились сегодня",
        backgroundColor: Theme.of(context).backgroundColor,
        body: Column(children: [
          Expanded(
              child: Scrollbar(
                  child: ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(top: 15),
              child: PersonSearch(
                imageUrl: persons[index].banner,
                personName: persons[index].name,
              ),
            ),
            itemCount: persons.length,
          )))
        ]));
  }

  Color _getRatingColor(int rating) {
    if (rating < 0) {
      return Colors.red;
    }
    return Colors.green;
  }

  Widget _rating(int rating) {
    return rating != 0
        ? Row(children: [
            Icon(
              rating > 0 ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
              size: 20,
              color: _getRatingColor(rating),
            ),
            Text(
              rating.abs().toString(),
              style: TextStyle(fontSize: 13, color: _getRatingColor(rating)),
            )
          ])
        : Container();
  }

  Widget _popularPersons(BuildContext context, List<PersonShortModel> persons) {
    return KipPageLayout(
        title: "Топ популярных персон",
        backgroundColor: Theme.of(context).backgroundColor,
        body: Scrollbar(
            child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Column(children: [
              Row(children: [
                Text(
                  (index + 1).toString(),
                  style: TextStyle(color: Colors.grey[600]),
                ),
                Spacer(),
                _rating(0)
              ]),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: PersonSearch(
                  imageUrl: persons[index].banner,
                  personName: persons[index].name,
                ),
              )
            ]),
          ),
          itemCount: persons.length,
        )));
  }

  @override
  void initState() {
    super.initState();
    final searchModel = Provider.of<SearchViewModel>(context, listen: false);
    searchModel.getSearchPage();
  }

  @override
  Widget build(BuildContext context) {
    final searchModel = Provider.of<SearchViewModel>(context);
    final searchPage = searchModel.searchMenuContentModel;

    return Scaffold(
        appBar: _buildSearchTextFieldWidget(context),
        body: Container(
            color: Theme.of(context).accentColor,
            child: searchModel.loading
                ? Center(
                    child: CircularProgressIndicator(
                    color: Theme.of(context).primaryColor,
                  ))
                : Scrollbar(
                    child: ListView(
                    children: [
                      CustomListView(
                          categoryTitle: "Советуем посмотреть",
                          allItems: Text(
                            "Все",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w500),
                          ),
                          paddingLeft: true,
                          allItemsLink: _adwiseToLook(searchPage?.selections),
                          itemBuilder: (context, index) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 6),
                              child: Censor(
                                  filmObjects: searchPage
                                          ?.selections[index].filmObjects ??
                                      List.empty(),
                                  imageUrl:
                                      searchPage?.selections[index].image ?? "",
                                  title: searchPage?.selections[index].name ??
                                      "")),
                          itemsLength: searchPage?.selections.length ?? 0,
                          height: 210.0),
                      const SizedBox(
                        height: 20,
                      ),
                      SearchCategories(
                        selections: searchPage?.selections ?? List.empty(),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomListView(
                          categoryTitle: "Популярные персоны",
                          allItems: Text(
                            "Все",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w500),
                          ),
                          paddingLeft: true,
                          allItemsLink: _popularPersons(
                              context, searchPage?.mostPopular ?? List.empty()),
                          itemBuilder: (context, index) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 6),
                              child: Person(
                                  id: searchPage?.mostPopular[index].id ?? "",
                                  imageUrl: searchPage
                                          ?.mostPopular[index].photos[0] ??
                                      "",
                                  personName:
                                      searchPage?.mostPopular[index].name ??
                                          "")),
                          itemsLength: searchPage?.mostPopular.length ?? 0,
                          height: 230.0),
                      SizedBox(
                        height: 20,
                      ),
                      searchPage?.today.length != 0
                          ? CustomListView(
                              categoryTitle: "Родились сегодня",
                              allItems: Text(
                                "Все",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w500),
                              ),
                              paddingLeft: true,
                              allItemsLink: _bornToday(
                                  context, searchPage?.today ?? List.empty()),
                              itemBuilder: (context, index) => Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 6),
                                  child: Person(
                                      id: searchPage?.today[index].id ?? "",
                                      imageUrl:
                                          searchPage?.today[index].photos[0] ??
                                              "",
                                      personName:
                                          searchPage?.today[index].name ?? "")),
                              itemsLength: searchPage?.today.length ?? 0,
                              height: 230.0)
                          : SizedBox(),
                      SizedBox(
                        height: 25,
                      )
                    ],
                  ))));
  }
}
