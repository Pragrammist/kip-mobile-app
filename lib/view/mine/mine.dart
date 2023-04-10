import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kip_mobile/view/layouts/kip_page_layout.dart';
import 'package:kip_mobile/view/media/media.dart';
import 'package:kip_mobile/view/mine/mine_category_screen.dart';
import 'package:kip_mobile/view/profile/settings.dart';
import 'package:kip_mobile/view/widget/custom_list_view.dart';
import 'package:kip_mobile/view/widget/mine_category_empty.dart';
import 'package:kip_mobile/view/widget/mine_folder_item.dart';
import 'package:kip_mobile/view/widget/mine_folder_item_inside.dart';

class MineScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final folders = List.generate(
        10,
        (int index) => MineFolderItem(
              icon: Icons.favorite,
              title: "Rates and views",
            ));

    Widget _buildFoldersGrid() {
      return KipPageLayout(
          title: "Папки",
          body: GridView.count(
            primary: false,
            childAspectRatio: (1 / 1.16),
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 5,
            mainAxisSpacing: 8,
            crossAxisCount: 2,
            children: <Widget>[
              MineFolderItemInside(
                icon: Icons.favorite,
                title: "Rates and views",
              ),
              MineFolderItemInside(
                icon: Icons.favorite,
                title: "Rates and views",
              ),
              MineFolderItemInside(
                icon: Icons.favorite,
                title: "Rates and views",
              ),
              MineFolderItemInside(
                icon: Icons.favorite,
                title: "Rates and views",
              ),
              MineFolderItemInside(
                icon: Icons.favorite,
                title: "Rates and views",
              ),
            ],
          ));
    }

    return CupertinoPageScaffold(
        child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return <Widget>[
                CupertinoSliverNavigationBar(
                    backgroundColor: Theme.of(context).accentColor,
                    largeTitle: const Text(
                      "My",
                      style: TextStyle(color: Colors.white),
                    )),
              ];
            },
            body: Container(
                color: Theme.of(context).accentColor,
                child: ListView(
                  children: <Widget>[
                    CustomListView(
                      categoryTitle: "Will watch",
                      allItemsLink: MineCategoryScreen(
                        emptyWidget: MineCategoryEmpty(
                            title:
                                "Сохраняйте фильмы и сериалы здесь, чтобы вернуться к ним позже",
                            iconSize: 100,
                            icon: Icons.bookmark,
                            buttonTheme: KipButtonTheme.ButtonGrey,
                            buttonText: "На главную",
                            onPressed: () => Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MediaScreen(),
                                    maintainState: false),
                                (route) => false)),
                        length: 0,
                      ),
                      allItems: Text(
                        "0",
                        style: TextStyle(
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w800),
                      ),
                      itemBuilder: (context, index) => Container(),
                      itemsLength: 1,
                      height: 50,
                      emptyWidget: MineCategoryEmpty(
                        iconSize: 100,
                        title: "title 2",
                        icon: Icons.bookmark,
                        buttonText: "На главную",
                        buttonTheme: KipButtonTheme.ButtonGrey,
                      ),
                    ),
                    CustomListView(
                      categoryTitle: "Downloads",
                      allItemsLink: MineCategoryScreen(
                        emptyWidget: MineCategoryEmpty(
                          iconSize: 100,
                          title:
                              "Загружайте фильмы и сериалы, чтобы смотреть их без интернета",
                          icon: Icons.download_sharp,
                          buttonText: "Выбрать, что загрузить",
                          buttonTheme: KipButtonTheme.ButtonGrey,
                        ),
                        length: 0,
                      ),
                      itemBuilder: (context, index) => Container(),
                      allItems: Text(
                        "0",
                        style: TextStyle(
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w800),
                      ),
                      itemsLength: 0,
                      height: 250,
                      emptyWidget: Container(
                          color: Theme.of(context).backgroundColor,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                MineCategoryEmpty(
                                  icon: Icons.download_sharp,
                                  iconSize: 50,
                                  title:
                                      "Загружайте фильмы и сериалы, чтобы смотреть их без интернета",
                                  buttonText: "Выбрать, что загрузить",
                                  buttonTheme: KipButtonTheme.ButtonGrey,
                                )
                              ])),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomListView(
                        categoryTitle: "Folders",
                        allItemsLink: _buildFoldersGrid(),
                        allItems: Text(
                          "5",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w700),
                        ),
                        itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(right: 6),
                            child: MineFolderItem(
                              icon: Icons.favorite,
                              title: "Rates and views",
                            )),
                        itemsLength: 5,
                        height: 400)
                  ],
                ))));
  }
}
