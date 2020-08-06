import 'package:networthapp/ui/add_asset/add_asset_model.dart';
import 'package:networthapp/ui/add_debt/add_debt_screen_model.dart';
import 'package:networthapp/ui/add_money/add_money_screen_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

//add view models here
final providers = <SingleChildWidget>[
  ChangeNotifierProvider(create: (_) => AddMoneyModel()),
  ChangeNotifierProvider(create: (_) => AddAssetModel()),
  ChangeNotifierProvider(create: (_) => AddDebtModel()),
];
