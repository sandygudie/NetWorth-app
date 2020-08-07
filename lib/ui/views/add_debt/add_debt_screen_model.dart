import 'package:flutter/material.dart';
import 'package:networthapp/ui/components/DropdownItem.dart';

class AddDebtModel extends ChangeNotifier {
  final List<String> period = ['Day', 'Week', 'Month', 'Year'];

  var selectedPeriod = 'Day';

  static List<DropdownItem> debtItems = [
    DropdownItem(
      itemImage: 'images/mortgage.png',
      itemName: 'Mortgage',
      background: Color(0xFFEAEBFA),
    ),
    DropdownItem(
      itemImage: 'images/loan.png',
      itemName: 'Loan',
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

  var selectedDebtItem = debtItems[0].itemName;

  String updateItem(String val) {
    selectedDebtItem = val;
    notifyListeners();
    return selectedDebtItem;
  }

  String updatePeriod(String per) {
    this.selectedPeriod = per;
    notifyListeners();
    return selectedPeriod;
  }
}
