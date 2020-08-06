import 'package:flutter/material.dart';
import 'package:networthapp/ui/size_config/config.dart';

class DropdownItem extends StatelessWidget {
  DropdownItem({
    @required this.itemImage,
    @required this.itemName,
    this.background,
  });

  final String itemImage;
  final String itemName;
  final Color background;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: <Widget>[
        CircleAvatar(
          backgroundColor: background,
          child: Image.asset(itemImage),
        ),
        SizedBox(
          width: Config.xMargin(
            context,
            2.03,
          ),
        ),
        Text(
          itemName,
          style: TextStyle(
            fontFamily: 'Open Sans',
            fontSize: Config.textSize(context, 4.58),
          ),
        )
      ],
    ));
  }
}
