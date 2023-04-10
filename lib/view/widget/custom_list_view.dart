import 'package:flutter/material.dart';
import 'package:kip_mobile/view/widget/custom_view_header.dart';
import 'package:kip_mobile/view/widget/film.dart';

class CustomListView extends StatelessWidget {
  const CustomListView(
      {super.key,
      required this.categoryTitle,
      required this.allItemsLink,
      required this.allItems,
      required this.itemBuilder,
      required this.itemsLength,
      required this.height,
      this.emptyWidget,
      this.listAxis,
      this.physics,
      this.paddingLeft});

  final String categoryTitle;
  final Widget allItemsLink;
  final Widget allItems;
  final int itemsLength;
  final IndexedWidgetBuilder itemBuilder;
  final double height;
  final Widget? emptyWidget;
  final Axis? listAxis;
  final ScrollPhysics? physics;
  final bool? paddingLeft;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            CustomViewHeader(
              categoryTitle: categoryTitle,
              allItemsLink: allItemsLink,
              allItems: allItems,
              paddingLeft: paddingLeft,
            ),
            Expanded(
                child: itemsLength != 0
                    ? ListView.builder(
                        physics: physics != null
                            ? physics!
                            : ClampingScrollPhysics(),
                        scrollDirection:
                            listAxis != null ? listAxis! : Axis.horizontal,
                        itemCount: itemsLength,
                        itemBuilder: itemBuilder,
                      )
                    : emptyWidget!)
          ],
        ));
  }
}
