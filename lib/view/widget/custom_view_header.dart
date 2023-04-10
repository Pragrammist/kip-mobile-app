import 'package:flutter/material.dart';

class CustomViewHeader extends StatelessWidget {
  const CustomViewHeader(
      {super.key,
      required this.categoryTitle,
      required this.allItemsLink,
      required this.allItems,
      this.paddingLeft});

  final String categoryTitle;
  final Widget allItemsLink;
  final Widget allItems;
  final bool? paddingLeft;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: InkWell(
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => allItemsLink)),
            child: Row(
              children: <Widget>[
                Text(
                  categoryTitle,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Padding(
                    padding:
                        EdgeInsets.only(right: paddingLeft != null ? 15 : 0),
                    child: allItems)
              ],
            )));
  }
}
