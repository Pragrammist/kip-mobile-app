import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kip_mobile/view/widget/person_search.dart';

class PersonInfo extends StatelessWidget {
  const PersonInfo(
      {super.key,
      required this.personName,
      required this.dateOfBirth,
      required this.height,
      required this.imageUrl});

  final String personName;
  final DateTime dateOfBirth;
  final double height;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Image(
          image: NetworkImage(imageUrl),
          width: 100,
          height: 150,
          fit: BoxFit.fill,
        ),
        SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              personName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
            Text(
              DateFormat("d MMM y", "ru").format(dateOfBirth),
              style: TextStyle(color: Colors.grey[600]),
            ),
            Text(
              "${DateTime.now().year - dateOfBirth.year} лет ${(height / 100)} м",
              style: TextStyle(color: Colors.grey[600]),
            )
          ],
        )
      ]),
    );
  }
}
