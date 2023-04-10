import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:kip_mobile/res/theme/theme.dart';
import 'package:kip_mobile/view/film/film.dart';
import 'package:kip_mobile/view/media/media.dart';
import 'package:kip_mobile/view/mine/mine.dart';
import 'package:kip_mobile/view/person/person.dart';
import 'package:kip_mobile/view/profile/profile.dart';
import 'package:kip_mobile/view/profile/settings.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kip_mobile/view/search/search.dart';
import 'package:kip_mobile/view/widget/article.dart';
import 'package:kip_mobile/view/widget/categories.dart';
import 'package:kip_mobile/view/widget/censor.dart';
import 'package:kip_mobile/view/widget/custom_list_view.dart';
import 'package:kip_mobile/view/widget/film.dart';
import 'package:kip_mobile/view/widget/person.dart';
import 'package:kip_mobile/view/widget/profile_info.dart';
import 'package:kip_mobile/view/widget/trailer.dart';
import 'package:kip_mobile/view/widget/webview.dart';
import 'package:kip_mobile/view_model/auth_view_model.dart';
import 'package:kip_mobile/view_model/film_view_model.dart';
import 'package:kip_mobile/view_model/media_view_model.dart';
import 'package:kip_mobile/view_model/person_view_model.dart';
import 'package:kip_mobile/view_model/profile_view_model.dart';
import 'package:kip_mobile/view_model/search_view_model.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MediaViewModel(),
          ),
          ChangeNotifierProvider(create: (context) => SearchViewModel()),
          ChangeNotifierProvider(
            create: (context) => ProfileViewModel(),
          ),
          ChangeNotifierProvider(
            create: (context) => PersonViewModel(),
          ),
          ChangeNotifierProvider(
            create: (context) => FilmViewModel(),
          ),
          ChangeNotifierProvider(create: (context) => AuthViewModel())
        ],
        child: MaterialApp(
          title: 'KIP',
          theme: AppTheme.darkTheme,
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          // provider locale
          locale: const Locale('ru'),
          supportedLocales: const [Locale('ru'), Locale('en')],
          home: const MyHomePage(title: "sdsd"),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class CustomNavBarWidget extends StatelessWidget {
  final int selectedIndex;
  final List<PersistentBottomNavBarItem> items;
  final ValueChanged<int> onItemSelected;

  CustomNavBarWidget({
    required this.selectedIndex,
    required this.items,
    required this.onItemSelected,
  });

  Widget _buildItem(PersistentBottomNavBarItem item, bool isSelected) {
    return Container(
      alignment: Alignment.center,
      height: 60.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Flexible(
            child: IconTheme(
              data: IconThemeData(
                  size: 26.0,
                  color: isSelected
                      ? (item.activeColorSecondary == null
                          ? item.activeColorPrimary
                          : item.activeColorSecondary)
                      : item.inactiveColorPrimary == null
                          ? item.activeColorPrimary
                          : item.inactiveColorPrimary),
              child: item.icon,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Material(
              type: MaterialType.transparency,
              child: FittedBox(
                  child: Text(
                item.title!,
                style: TextStyle(
                    color: isSelected
                        ? (item.activeColorSecondary == null
                            ? item.activeColorPrimary
                            : item.activeColorSecondary)
                        : item.inactiveColorPrimary,
                    fontWeight: FontWeight.w400,
                    fontSize: 12.0),
              )),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: Container(
        width: double.infinity,
        height: 60.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: items.map((item) {
            int index = items.indexOf(item);
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  this.onItemSelected(index);
                },
                child: _buildItem(item, selectedIndex == index),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
      MediaScreen(),
      MineScreen(),
      SearchScreen(),
      ProfileScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems(BuildContext context) {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.photo_album),
        title: ("Media"),
        activeColorPrimary: Theme.of(context).primaryColor,
        inactiveColorPrimary: Colors.grey[600],
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.bookmark_fill),
        title: ("My"),
        activeColorPrimary: Theme.of(context).primaryColor,
        inactiveColorPrimary: Colors.grey[600],
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.search),
        title: ("Search"),
        activeColorPrimary: Theme.of(context).primaryColor,
        inactiveColorPrimary: Colors.grey[600],
      ),
      PersistentBottomNavBarItem(
          icon: Icon(Icons.account_circle),
          title: "Profile",
          activeColorPrimary: Theme.of(context).primaryColor,
          inactiveColorPrimary: Colors.grey[600]),
    ];
  }

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Theme.of(context).backgroundColor,
        child: SafeArea(
            top: false,
            right: false,
            left: false,
            child: PersistentTabView.custom(
              context,
              controller: _controller,
              itemCount:
                  4, // This is required in case of custom style! Pass the number of items for the nav bar.
              screens: _buildScreens(),
              confineInSafeArea: false,
              onWillPop: (final context) async {
                await showDialog(
                  context: context!,
                  useSafeArea: true,
                  builder: (final context) => Container(
                    height: 50,
                    width: 50,
                    color: Colors.white,
                    child: ElevatedButton(
                      child: const Text("Close"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                );
                return false;
              },
              handleAndroidBackButtonPress: true,
              customWidget: CustomNavBarWidget(
                // Your custom widget goes here
                items: _navBarsItems(context),
                selectedIndex: _controller.index,
                onItemSelected: (index) {
                  setState(() {
                    _controller.index =
                        index; // NOTE: THIS IS CRITICAL!! Don't miss it!
                  });
                },
              ),
            )));
  }
}
