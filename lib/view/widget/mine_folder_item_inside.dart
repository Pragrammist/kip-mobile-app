import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kip_mobile/view/widget/gradient_icon.dart';

class MineFolderItemInside extends StatelessWidget {
  const MineFolderItemInside(
      {super.key, required this.icon, required this.title});

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 170,
              height: 200,
              child: Container(
                color: Theme.of(context).backgroundColor,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GradientIcon(
                        icon,
                        65.0,
                        const LinearGradient(
                          colors: <Color>[
                            Color(0xFFAC9A8E),
                            Color(0xFFB3A5A5),
                            Color(0xFFA2A5B4),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      Text(title)
                    ]),
              ),
            ),
          ]),
    );
  }
}
