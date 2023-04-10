import 'package:flutter/material.dart';
import 'package:kip_mobile/view/widget/custom_view_header.dart';
import 'package:kip_mobile/view/widget/include_chart.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView(
      {super.key,
      required this.categoryTitle,
      required this.allItemsLink,
      required this.allItems,
      required this.itemBuilder,
      required this.itemsLength,
      required this.height,
      required this.aspectRatio,
      this.emptyWidget,
      this.physics,
      this.paddingLeft});

  final double aspectRatio;
  final String categoryTitle;
  final Widget allItemsLink;
  final Widget allItems;
  final int itemsLength;
  final NullableIndexedWidgetBuilder itemBuilder;
  final double height;
  final Widget? emptyWidget;
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
                    ? GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3, childAspectRatio: aspectRatio),
                        itemCount: itemsLength,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: itemBuilder,
                      )
                    : emptyWidget!)
          ],
        ));
  }
}
