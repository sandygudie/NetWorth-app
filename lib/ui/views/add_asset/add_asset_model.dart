import 'package:flutter/material.dart';
import 'package:networthapp/ui/components/DropdownItem.dart';

class AddAssetModel extends ChangeNotifier {
  static List<DropdownItem> assetItems = [
    DropdownItem(
      itemImage: 'images/estate.png',
      itemName: 'Real Estate',
      background: Color(0xFFFFF3E1),
    ),
    DropdownItem(
      itemImage: 'images/valuables.png',
      itemName: 'Valuables',
      background: Color(0xFFE1F3F2),
    ),
    DropdownItem(
      itemImage: 'images/investments.png',
      itemName: 'Investments',
      background: Color(0xFFFCE4EC),
    ),
    DropdownItem(
      itemImage: 'images/add.png',
      itemName: 'Add Category',
      background: Colors.white,
    )
  ];

  var selectedAssetItem = assetItems[0].itemName;

  String updateItem(String val) {
    selectedAssetItem = val;
    notifyListeners();
    return selectedAssetItem;
  }
}
