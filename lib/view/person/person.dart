import 'package:flutter/material.dart';
import 'package:kip_mobile/view/layouts/kip_page_layout.dart';
import 'package:kip_mobile/view/profile/settings.dart';
import 'package:kip_mobile/view/widget/category_item.dart';
import 'package:kip_mobile/view/widget/censor_film_item.dart';
import 'package:kip_mobile/view/widget/custom_list_view.dart';
import 'package:kip_mobile/view/widget/fact.dart';
import 'package:kip_mobile/view/widget/film.dart';
import 'package:kip_mobile/view/widget/person_article.dart';
import 'package:kip_mobile/view/widget/person_info.dart';
import 'package:kip_mobile/view/widget/reward.dart';
import 'package:kip_mobile/view_model/person_view_model.dart';
import 'package:provider/provider.dart';

class PersonScreen extends StatefulWidget {
  const PersonScreen({super.key, required this.id});

  final String id;

  @override
  _PersonScreen createState() => _PersonScreen();
}

class _PersonScreen extends State<PersonScreen> {
  @override
  void initState() {
    super.initState();
    final personModel = Provider.of<PersonViewModel>(context, listen: false);
    personModel.getPersonPage(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    Widget _factsMore(List<String> facts) {
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
                    child: Text(facts[index]),
                  )),
            ),
            itemCount: facts.length,
          ));
    }

    final personModel = Provider.of<PersonViewModel>(context);
    final personPage = personModel.personModel;

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black),
      body: Container(
          color: Colors.black,
          child: personModel.loading
              ? Center(
                  child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                ))
              : ListView(
                  children: [
                    PersonInfo(
                      personName: personPage?.name ?? "",
                      dateOfBirth: personPage?.birthday ?? DateTime.now(),
                      imageUrl: personPage?.banner ?? "",
                      height: personPage?.height ?? 0.0,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    CustomListView(
                        categoryTitle: "Лучший фильмы и сериалы",
                        allItemsLink: const SettingsScreen(),
                        allItems: Container(),
                        itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Film(
                              id: personPage?.filmObjects[index].id ?? "",
                              imageUrl:
                                  personPage?.filmObjects[index].banner ?? "",
                              genres: personPage?.filmObjects[index].genres ??
                                  List.empty(),
                              title: personPage?.filmObjects[index].name ?? "",
                            )),
                        itemsLength: personPage?.filmObjects.length ?? 0,
                        height: 230),
                    SizedBox(
                      height: 30,
                    ),
                    CustomListView(
                        categoryTitle: "Изображения",
                        allItemsLink: const SettingsScreen(),
                        allItems: Text(
                          personPage?.photos.length.toString() ?? "0",
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ),
                        itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Image(
                                image: NetworkImage(
                                    personPage?.photos[index] ?? ""))),
                        itemsLength: personPage?.photos.length ?? 0,
                        height: 230),
                    SizedBox(
                      height: 40,
                    ),
                    CustomListView(
                        categoryTitle: "Награды",
                        allItemsLink: const SettingsScreen(),
                        allItems: Container(),
                        itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Reward(
                              title: personPage?.nominations[index] ?? "",
                            )),
                        itemsLength: personPage?.nominations.length ?? 0,
                        height: 130),
                    SizedBox(
                      height: 40,
                    ),
                    CustomListView(
                        categoryTitle: "Факты",
                        allItemsLink:
                            _factsMore(personPage?.facts ?? List.empty()),
                        allItems: Text(
                          personPage?.facts.length.toString() ?? "0",
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ),
                        itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Fact(
                              fact: personPage?.facts[index] ?? "",
                            )),
                        itemsLength: personPage?.facts.length ?? 0,
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
                    Padding(
                        padding: const EdgeInsets.only(bottom: 10, top: 40),
                        child: Text(
                          "Фильмография",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        )),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: CensorFilmItem(
                            id: personPage?.filmObjects[index].id ?? "",
                            imageUrl:
                                personPage?.filmObjects[index].banner ?? "",
                            title: personPage?.filmObjects[index].name ?? "",
                            genres: personPage?.filmObjects[index].genres ??
                                List.empty(),
                          )),
                      itemCount: personPage?.filmObjects.length ?? 0,
                    )
                  ],
                )),
    );
  }
}
