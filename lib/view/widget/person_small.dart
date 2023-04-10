import 'package:flutter/material.dart';

class PersonSmall extends StatelessWidget {
  const PersonSmall(
      {super.key, required this.personName, required this.imageUrl});

  final String personName;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Image(
                  image: NetworkImage(imageUrl),
                  width: 40,
                  height: 55,
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: 200,
                          child: Text(
                            personName,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 14),
                          )),
                      SizedBox(
                        height: 5,
                      ),
                    ])
              ])
            ]));
  }
}
