import 'package:flutter/material.dart';

class SearchResult extends StatelessWidget {
  const SearchResult(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.imageUrl});

  final String title;
  final String subtitle;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          //  Navigator.of(context)
          //      .push(MaterialPageRoute(builder: (context) => CensorScreen()));
        },
        child: Row(children: [
          Image(
            image: NetworkImage(imageUrl),
            width: 60,
            height: 60,
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.grey[600], fontSize: 12),
                )
              ])
        ]));
  }
}
