import 'package:flutter/material.dart';
import 'package:kip_mobile/models/person_type.dart';
import 'package:kip_mobile/view/layouts/kip_page_layout.dart';
import 'package:kip_mobile/view/profile/settings.dart';
import 'package:kip_mobile/view/widget/custom_grid_view.dart';
import 'package:kip_mobile/view/widget/custom_list_view.dart';
import 'package:kip_mobile/view/widget/fact.dart';
import 'package:kip_mobile/view/widget/include_chart.dart';
import 'package:kip_mobile/view/widget/person_article.dart';
import 'package:kip_mobile/view/widget/person_small.dart';
import 'package:kip_mobile/view/widget/record_group_person.dart';
import 'package:kip_mobile/view/widget/rental_dots.dart';
import 'package:kip_mobile/view/widget/reward.dart';
import 'package:kip_mobile/view/widget/trailer.dart';
import 'package:kip_mobile/view/widget/trailer_big.dart';
import 'package:kip_mobile/view_model/film_view_model.dart';
import 'package:provider/provider.dart';

class FilmScreen extends StatefulWidget {
  FilmScreen({super.key, required this.id});

  final String id;

  @override
  _FilmScreen createState() => _FilmScreen();
}

class _FilmScreen extends State<FilmScreen> {
  Widget _rental(BuildContext context, String title, String label) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "\$ 950.93 млн.",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              Text("Бюджет")
            ]),
      ),
    );
  }

  Widget _filmCrew(BuildContext context) {
    return Container(
      width: 300,
      color: Theme.of(context).backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image(
            image: NetworkImage(
                "https://avatars.mds.yandex.net/get-kinopoisk-image/1600647/412f5678-f691-4ae2-965b-0e528857fc3f/orig"),
            width: 30,
            height: 60,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Text("М. Найт Шьямалан"),
              Text("режиссер, спенарист"),
              Flexible(
                  child: Text(
                "Шестое чувство, Таинстенный лес, Неуязвимый, Сплит, Дом с прислугой, Это мы, Красавицы",
                maxLines: 3,
              ))
            ],
          )
        ]),
      ),
    );
  }

  Widget _iconButton(IconData icon, String label) {
    return Padding(
        padding: const EdgeInsets.only(right: 15),
        child: InkWell(
          child: Column(children: [
            Icon(
              icon,
              size: 25,
            ),
            Text(label)
          ]),
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

  Widget _factsMore() {
    return KipPageLayout(
        title: "Факты",
        backgroundColor: Colors.grey[900],
        body: ListView.builder(
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                  child: Container(
                      color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                            "Lorem ipsum dolor sit amet, qui minim labore adipisicing minim sint cillum sint consectetur cupidatat."),
                      )),
                )));
  }

  Widget _rentralMore() {
    return KipPageLayout(
        title: "Прокат",
        body: Scrollbar(
            child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.only(top: 20),
            child:
                RentalDots(leadingText: "Бюджет", trailingText: '\$90 000 000'),
          ),
          itemCount: 20,
        )));
  }

  @override
  void initState() {
    super.initState();

    final filmModel = Provider.of<FilmViewModel>(context, listen: false);
    filmModel.getFilmPage(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    final filmModel = Provider.of<FilmViewModel>(context);
    final film = filmModel.filmModel;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: Container(
            color: Colors.black,
            child: SafeArea(
              child: filmModel.loading
                  ? Center(
                      child: CircularProgressIndicator(
                      color: Theme.of(context).primaryColor,
                    ))
                  : Scrollbar(
                      child: ListView(
                      children: <Widget>[
                        Expanded(
                          child: Column(children: [
                            Image(
                              image: NetworkImage(film?.banner ?? ""),
                              width: 150,
                              height: 250,
                            ),
                            Text(
                              film?.name ?? "",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w900),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "${film?.release?.year ?? 2023}, ${film?.genres.join(', ')}",
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                            Text(
                              "${film?.country ?? ''}, 1 ч 35 мин, ${film?.ageLimit ?? 18}+",
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            //Row(
                            //  mainAxisAlignment: MainAxisAlignment.center,
                            //  children: [
                            //    _iconButton(Icons.star, "Rate"),
                            //    _iconButton(Icons.bookmark_add, "Will watch"),
                            //    _iconButton(Icons.share, "Share"),
                            //    _iconButton(Icons.more, "More")
                            //  ],
                            //),
                            SizedBox(
                              height: 15,
                            ),
                            Text(film?.description ?? ""),
                            SizedBox(
                              height: 20,
                            ),
                            CustomListView(
                                categoryTitle: "Трейлеры и тизеры",
                                paddingLeft: true,
                                allItems: Text(
                                  "6",
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.w500),
                                ),
                                allItemsLink: _trailersMore(),
                                itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Trailer()),
                                itemsLength: 10,
                                height: 235.0),
                            const SizedBox(
                              height: 40,
                            ),
                            CustomGridView(
                                categoryTitle: "Актеры",
                                allItemsLink: const SettingsScreen(),
                                allItems: Text(
                                  "66",
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.w500),
                                ),
                                aspectRatio: 1 / 4,
                                paddingLeft: true,
                                itemBuilder: (context, index) => PersonSmall(
                                      personName: "М. Найт Шьямалан",
                                      imageUrl:
                                          "https://avatars.mds.yandex.net/get-kinopoisk-image/1629390/865d2d0e-bac6-4a78-a0ed-17a87b285069/600x900",
                                    ),
                                itemsLength: 10,
                                height: 250),
                            const SizedBox(
                              height: 40,
                            ),
                            CustomListView(
                                categoryTitle: "Съёмочная группа",
                                allItemsLink: const SettingsScreen(),
                                allItems: Text(
                                  "46",
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor),
                                ),
                                paddingLeft: true,
                                itemBuilder: (context, index) => Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: RecordGroupPerson(
                                        personName: "М. Найт Шьямалан",
                                        job: ["Режиссер", "Продюсер"],
                                        imageUrl:
                                            "https://avatars.mds.yandex.net/get-kinopoisk-image/1600647/f3477d3d-8842-4293-8383-45ee2f9cb7bc/600x900",
                                      ),
                                    ),
                                itemsLength: 5,
                                height: 140),
                            const SizedBox(
                              height: 40,
                            ),
                            CustomListView(
                                categoryTitle: "Изображения",
                                allItemsLink: const SettingsScreen(),
                                allItems: Text(
                                  "46",
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor),
                                ),
                                paddingLeft: true,
                                itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Image(
                                      image: NetworkImage(
                                          "https://avatars.mds.yandex.net/get-kinopoisk-image/1600647/412f5678-f691-4ae2-965b-0e528857fc3f/orig"),
                                    )),
                                itemsLength: 5,
                                height: 230),
                            //SizedBox(
                            //  height: 40,
                            //),
                            //CustomGridView(
                            //    categoryTitle: "Входит в списки",
                            //    allItemsLink: const SettingsScreen(),
                            //    aspectRatio: 1 / 5,
                            //    allItems: Text(
                            //      "25",
                            //      style: TextStyle(
                            //          color: Theme.of(context).primaryColor,
                            //          fontWeight: FontWeight.w500),
                            //    ),
                            //    paddingLeft: true,
                            //    itemBuilder: (context, index) => IncludeChart(),
                            //    itemsLength: 10,
                            //    height: 250),
                            SizedBox(
                              height: 40,
                            ),
                            CustomListView(
                                categoryTitle: "Факты",
                                allItemsLink: _factsMore(),
                                allItems: Text(
                                  "3",
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor),
                                ),
                                paddingLeft: true,
                                itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: Fact(
                                      fact: "Some fact",
                                    )),
                                itemsLength: 5,
                                height: 200),
                            //SizedBox(
                            //  height: 40,
                            //),
                            //CustomListView(
                            //    categoryTitle: "Articles",
                            //    allItemsLink: const SettingsScreen(),
                            //    allItems: Text(
                            //      "54",
                            //      style: TextStyle(color: Theme.of(context).primaryColor),
                            //    ),
                            //    itemBuilder: (context, index) => Padding(
                            //        padding: const EdgeInsets.only(right: 10),
                            //        child: PersonArticle()),
                            //    itemsLength: 5,
                            //    height: 280),
                            SizedBox(
                              height: 40,
                            ),
                            CustomListView(
                                categoryTitle: "Награды",
                                allItemsLink: const SettingsScreen(),
                                allItems: Container(),
                                paddingLeft: true,
                                itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Reward(
                                      title: "Золотая малина",
                                    )),
                                itemsLength: 10,
                                height: 115),
                            SizedBox(
                              height: 30,
                            ),
                            CustomListView(
                                categoryTitle: "Прокат",
                                allItemsLink: _rentralMore(),
                                allItems: Text(
                                  "Все",
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor),
                                ),
                                paddingLeft: true,
                                itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: _rental(context, "", "")),
                                itemsLength: 10,
                                height: 115),
                            SizedBox(
                              height: 20,
                            )
                          ]),
                        )
                      ],
                    )),
            )));
  }
}
