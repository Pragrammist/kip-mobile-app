import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:kip_mobile/view/layouts/kip_page_layout.dart';
import 'package:kip_mobile/view/profile/settings.dart';
import 'package:kip_mobile/view/widget/article.dart';
import 'package:kip_mobile/view/widget/category_item.dart';
import 'package:kip_mobile/view/widget/censor_film_item.dart';
import 'package:kip_mobile/view/widget/custom_list_view.dart';
import 'package:kip_mobile/view/widget/film.dart';
import 'package:kip_mobile/view/widget/trailer.dart';
import 'package:kip_mobile/view/widget/trailer_big.dart';
import 'package:kip_mobile/view_model/media_view_model.dart';
import 'package:provider/provider.dart';
import 'package:settings_ui/settings_ui.dart';

class MediaScreen extends StatefulWidget {
  const MediaScreen({super.key});

  @override
  _MediaScreen createState() => _MediaScreen();
}

class _MediaScreen extends State<MediaScreen> {

        @override
    void initState() {
      super.initState();
      final mediaModel = Provider.of<MediaViewModel>(context, listen: false);
      mediaModel.getMediaPage();
    }


  @override
  Widget build(BuildContext context) {
    Widget _articlesMore() {
      return KipPageLayout(
          title: "Новости и статьи",
          // TODO LazyLoadScroll view
          body: ListView.builder(
            itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Article(
                    title:
                        "Вышел тизер сериала Федора Бондарчука и Валерия Тодоровского «Актрисы». В нем снялась Лолита Милявская sdsdsdsdsdsd",
                    date: DateTime.now(),
                    imageUrl:
                        "https://avatars.mds.yandex.net/get-kinopoisk-post-thumb/1348084/b4b7a69206a197081e907e7ef448c854/280x164",
                    link: "https://www.kinopoisk.ru/media/news/4007471/")),
            itemCount: 10,
          ));
    }

    Widget _trailersMore() {
      return KipPageLayout(
          title: "Трейлеры",
          body: ListView.builder(
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(top: 15),
              child: TrailerBig(),
            ),
            itemCount: 10,
          ));
    }

    Widget _scheludeMore() {
      return KipPageLayout(
        title: "График премьер",
        body: Column(children: [
          Expanded(
              child: ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(top: 15),
              //child: CensorFilmItem(),
              child: Container(),
            ),
            itemCount: 10,
          ))
        ]),
      );
    }

    Widget _digitalReleases() {
      List _elements = [
        {'group': '1 марта 2023'},
        {'group': '1 марта 2023'},
        {'group': '1 марта 2023'},
        {'group': '1 марта 2023'},
        {'group': '1 марта 2023'},
        {'group': '2 марта 2023'},
        {'group': '2 марта 2023'},
        {'group': '2 марта 2023'},
        {'group': '2 марта 2023'},
        {'group': '3 марта 2023'},
        {'group': '3 марта 2023'},
        {'group': '3 марта 2023'},
        {'group': '3 марта 2023'},
      ];

      return KipPageLayout(
          title: "Цифровые релизы",
          body: Column(
            children: [
              CupertinoListSection(
                topMargin: 0,
                children: [
                  CupertinoListTile(
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.all(0),
                    title: Text(
                      "Дата",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    leading: Icon(
                      Icons.sd,
                      size: 20,
                    ),
                    trailing: CupertinoListTileChevron(),
                  )
                ],
              ),
              Expanded(
                child: GroupedListView<dynamic, String>(
                  shrinkWrap: true,
                  elements: _elements,
                  useStickyGroupSeparators: true,
                  stickyHeaderBackgroundColor: Colors.black,
                  groupBy: (element) => element['group'],
                  groupComparator: (value1, value2) => value2.compareTo(value1),
                  order: GroupedListOrder.DESC,
                  groupSeparatorBuilder: (String value) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      value,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600]),
                    ),
                  ),
                  itemBuilder: (c, element) {
                    //return CensorFilmItem();
                    return SizedBox();
                  },
                ),
              )
            ],
          ));
    }

    final mediaModel = Provider.of<MediaViewModel>(context);
    final mediaPage = mediaModel.mediaContentModel;

    return CupertinoPageScaffold(
        backgroundColor: Theme.of(context).accentColor,
        child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return <Widget>[
                CupertinoSliverNavigationBar(
                  backgroundColor: Theme.of(context).accentColor,
                  largeTitle: Text(
                    "Медиа",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ];
            },
            body: Container(
                child: mediaModel.loading
                    ? Center(
                        child: CircularProgressIndicator(
                            color: Theme.of(context).primaryColor),
                      )
                    : ListView(
                        children: [
                          Column(children: <Widget>[
                            CustomListView(
                                categoryTitle:
                                    mediaPage?.selections[0].name ?? "",
                                allItems: Container(),
                                paddingLeft: true,
                                allItemsLink: const SettingsScreen(),
                                itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Film(
                                        id: mediaPage?.selections[0]
                                                .filmObjects[index].id ??
                                            "",
                                        title: mediaPage?.selections[0]
                                                .filmObjects[index].name ??
                                            "",
                                        genres: mediaPage?.selections[0].filmObjects[index].genres ?? List.empty(),
                                        imageUrl: mediaPage?.selections[0].filmObjects[index].banner ?? "")),
                                itemsLength: mediaPage
                                        ?.selections[0].filmObjects.length ??
                                    0,
                                height: 235.0),
                            SizedBox(
                              height: 10,
                            ),
                          ]),

                          Column(children: <Widget>[
                            CustomListView(
                                categoryTitle:
                                    mediaPage?.selections[2].name ?? "",
                                allItems: Container(),
                                paddingLeft: true,
                                allItemsLink: const SettingsScreen(),
                                itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Film(
                                        id: mediaPage?.selections[2]
                                                .filmObjects[index].id ??
                                            "",
                                        title: mediaPage?.selections[2]
                                                .filmObjects[index].name ??
                                            "",
                                        genres: mediaPage?.selections[2].filmObjects[index].genres ?? List.empty(),
                                        imageUrl: mediaPage?.selections[2].filmObjects[index].banner ?? "")),
                                itemsLength: mediaPage
                                        ?.selections[2].filmObjects.length ??
                                    0,
                                height: 235.0),
                            SizedBox(
                              height: 10,
                            ),
                          ]),

                          Column(children: <Widget>[
                            CustomListView(
                                categoryTitle:
                                    mediaPage?.selections[1].name ?? "",
                                allItems: Container(),
                                paddingLeft: true,
                                allItemsLink: const SettingsScreen(),
                                itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Film(
                                        id: mediaPage?.selections[1]
                                                .filmObjects[index].id ??
                                            "",
                                        title: mediaPage?.selections[1]
                                                .filmObjects[index].name ??
                                            "",
                                        genres: mediaPage?.selections[1].filmObjects[index].genres ?? List.empty(),
                                        imageUrl: mediaPage?.selections[1].filmObjects[index].banner ?? "")),
                                itemsLength: mediaPage
                                        ?.selections[1].filmObjects.length ??
                                    0,
                                height: 235.0),
                            SizedBox(
                              height: 10,
                            ),
                          ]),


                        ],
                      ))));
  }
}
