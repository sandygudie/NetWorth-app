import 'package:flutter/material.dart';
import 'package:networthapp/ui/components/DropdownItem.dart';

class AddAssetModel extends ChangeNotifier {
  List<DropdownItem> assetItems = [
    DropdownItem(
      itemImage: 'images/estate.png',
      itemName: 'Savings',
      background: Color(0xFFFFF3E1),
    ),
    DropdownItem(
      itemImage: 'images/valuables.png',
      itemName: 'Cash At Bank',
      background: Color(0xFFE1F3F2),
    ),
    DropdownItem(
      itemImage: 'images/investments.png',
      itemName: 'Credit Card',
      background: Color(0xFFFCE4EC),
    ),
    DropdownItem(
      itemImage: 'images/add.png',
      itemName: 'Add Category',
      background: Colors.white,
    )
  ];

//  var selectedMoneyItem = DropdownItem(
//    itemImage: 'images/savings.png',
//    itemName: 'Savings',
//    background: Color(0xFFFFF3E1),
//  );

  var selectedAssetItem;

  String updateItem(DropdownItem val) {
    selectedAssetItem = val;
    notifyListeners();
    return selectedAssetItem.itemName;
  }
}
