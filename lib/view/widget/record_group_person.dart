import 'package:flutter/material.dart';

class RecordGroupPerson extends StatelessWidget {
  const RecordGroupPerson(
      {super.key,
      required this.personName,
      required this.imageUrl,
      required this.job});

  final String imageUrl;
  final String personName;
  final List<String> job;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 270,
        color: Theme.of(context).backgroundColor,
        child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image(
                    image: NetworkImage(imageUrl),
                    width: 40,
                    height: 60,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              personName,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(job.join(", ")),
                            SizedBox(
                              height: 3,
                            ),
                            // SizedBox(
                            //     width: 180,
                            //     child: Text(
                            //       "Шестое чувство, Таинственный лес, Неуязвимый, Сплит, Дом с прислугой, Это мы, Красавцы",
                            //       style: TextStyle(fontSize: 13),
                            //       maxLines: 4,
                            //     ))
                          ]))
                ])));
  }
}
