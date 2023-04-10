import 'package:flutter/material.dart';
import 'package:kip_mobile/view/person/person.dart';

class Person extends StatelessWidget {
  const Person(
      {super.key, this.id = "", this.imageUrl = "", this.personName = ""});

  final String id;
  final String imageUrl;
  final String personName;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => PersonScreen(
                  id: id,
                ))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image(
              image: NetworkImage(imageUrl),
              width: 120,
              height: 170,
              fit: BoxFit.fitWidth,
            ),
            Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  personName,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ))
          ],
        ));
  }
}
