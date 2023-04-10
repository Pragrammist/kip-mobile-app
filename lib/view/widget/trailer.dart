import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kip_mobile/view/profile/settings.dart';
import 'package:kip_mobile/view/widget/video_player.dart';
import 'package:video_thumbnail/video_thumbnail.dart';
import 'package:path_provider/path_provider.dart';

class Trailer extends StatefulWidget {
  const Trailer({super.key});

  @override
  State<Trailer> createState() => _TrailerState();
}

class _TrailerState extends State<Trailer> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            InkWell(
                // video player todo
                onTap: () => Navigator.of(context).push(PageRouteBuilder(
                    opaque: false,
                    pageBuilder: (
                      BuildContext context,
                      Animation<double> animation,
                      Animation<double> secondaryAnimation,
                    ) {
                      return Scaffold(
                          body: VideoPlayerView(
                              url:
                                  "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4"));
                    })),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.network(
                      "https://avatars.mds.yandex.net/get-kinopoisk-post-img/1101693/4a4b86eca7682ddf0f2477a0ccd61413/960",
                      height: 140,
                      width: 250,
                      fit: BoxFit.contain,
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.black45,
                      child: Icon(
                        Icons.play_arrow,
                        size: 25,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: InkWell(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SettingsScreen())),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Операция фортуна",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "2023, боевик",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.grey[500]),
                            ),
                          ],
                        ),
                        Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.info,
                                  size: 20,
                                )
                              ],
                            ))
                      ],
                    ))),
          ]),
    );
  }
}
