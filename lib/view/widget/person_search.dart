import 'package:flutter/material.dart';

class PersonSearch extends StatelessWidget {
  const PersonSearch(
      {super.key, required this.personName, required this.imageUrl});

  final String imageUrl;
  final String personName;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
          padding: const EdgeInsets.all(4),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(
                          width: 60,
                          height: 80,
                          fit: BoxFit.fitWidth,
                          image: NetworkImage(imageUrl)),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              personName,
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                          ])
                    ]),
                Spacer(),
                Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Icon(Icons.chevron_right))
              ],
            ),
          ])),
    );
  }
}
