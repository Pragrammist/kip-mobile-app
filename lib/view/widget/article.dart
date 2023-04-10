import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kip_mobile/view/widget/webview.dart';

class Article extends StatelessWidget {
  const Article(
      {super.key,
      required this.title,
      required this.date,
      required this.imageUrl,
      required this.link});

  final String title;
  final String imageUrl;
  final DateTime date;
  final String link;

  int calculateDifference(DateTime date) {
    DateTime now = DateTime.now();
    return DateTime(date.year, date.month, date.day)
        .difference(DateTime(now.year, now.month, now.day))
        .inDays;
  }

  String _getDate(DateTime date) {
    if (calculateDifference(date) == 0) {
      return "Сегодня";
    } else if (calculateDifference(date) == -1) {
      return "Вчера";
    } else {
      String dateFormat = DateFormat("dd MMMM").format(date).toLowerCase();
      return dateFormat;
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => AppWebView(link: link)));
      },
      child: SizedBox(
          height: 75.0,
          child: Row(children: <Widget>[
            Image(
              image: NetworkImage(imageUrl),
              width: 90.0,
              height: 65.0,
              fit: BoxFit.cover,
            ),
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 100,
                    child: Text(
                      title,
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "${_getDate(date)}",
                    style: TextStyle(color: Colors.grey[400], fontSize: 12),
                  ),
                ],
              ),
            )
          ])),
    );
  }
}
