import 'package:flutter/material.dart';
import 'package:networthapp/ui/components/DropdownItem.dart';

class AddMoneyModel extends ChangeNotifier {
  static List<DropdownItem> moneyItems = [
    DropdownItem(
      itemImage: 'images/savings.png',
      itemName: 'Savings',
      background: Color(0xFFFFF3E1),
    ),
    DropdownItem(
      itemImage: 'images/cash.png',
      itemName: 'Cash At Bank',
      background: Color(0xFFE1F3F2),
    ),
    DropdownItem(
      itemImage: 'images/creditcard.png',
      itemName: 'Credit Card',
      background: Color(0xFFFCE4EC),
    ),
    DropdownItem(
      itemImage: 'images/add.png',
      itemName: 'Add Category',
      background: Colors.white,
    )
  ];

  var selectedMoneyItem = moneyItems[0].itemName;

//  var selectedMoneyItem = moneyItems[0];
//
//  List<int> get mls => _mls;
//
//  List<int> get mls => moneyItems;

  String updateItem(String val) {
    selectedMoneyItem = val;
    notifyListeners();
    return selectedMoneyItem;
  }
}
