import 'package:flutter/material.dart';
import 'package:networthapp/ui/DropdownItem.dart';
import 'package:networthapp/ui/Theme/appTheme.dart';
import 'package:networthapp/ui/add_money/add_money_screen_model.dart';
import 'package:networthapp/ui/size_config/config.dart';
import 'package:provider/provider.dart';

class AddMoneyScreen extends StatefulWidget {
  @override
  _AddMoneyScreenState createState() => _AddMoneyScreenState();
}

class _AddMoneyScreenState extends State<AddMoneyScreen> {
  TextEditingController _amountEditingController = TextEditingController();
  TextEditingController infoEditingController = TextEditingController();

  FocusNode _amountfocusNode = FocusNode();
  FocusNode _infofocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    var addMoneyModel = Provider.of<AddMoneyModel>(context);

    return Scaffold(
      backgroundColor: appThemeData.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: appThemeData.backgroundColor,
        title: Text(
          'Add Money',
          style: TextStyle(
              color: appThemeData.primaryColor,
              fontFamily: 'Open Sans',
              fontSize: Config.xMargin(context, 6.11),
              fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(
//                crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: Config.yMargin(context, 2.53),
                  ),
                  Text(
                    'Category',
                    style: TextStyle(fontFamily: 'Open Sans'),
                  ),
                  SizedBox(
                    height: Config.yMargin(context, 1.01),
                  ),
                  FormField<String>(
                    builder: (FormFieldState<String> state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                Config.xMargin(context, 1),
                              ),
                            ),
                          ),
                        ),
                        isEmpty: false,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            icon: Icon(
                              Icons.arrow_drop_down,
                              size: Config.xMargin(context, 8),
                            ),
                            value: addMoneyModel.selectedMoneyItem,
                            isDense: true,
                            items: AddMoneyModel.moneyItems.map((value) {
                              return DropdownMenuItem<dynamic>(
                                value: value.itemName,
                                child: value,
                              );
                            }).toList(),
                            onChanged: (value) {
                              addMoneyModel.updateItem(value);
                            },
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: Config.yMargin(context, 3.04),
                  ),
                  Text(
                    'Amount',
                    style: TextStyle(
                        fontFamily: 'Open Sans',
                        color: _amountEditingController.text.isNotEmpty == true
                            ? appThemeData.primaryColor
                            : appThemeData.primaryColorDark),
                  ),
                  SizedBox(
                    height: Config.yMargin(context, 1.01),
                  ),
                  TextField(
                    controller: _amountEditingController,
                    focusNode: _amountfocusNode,
                    onChanged: (val) {
                      val = _amountEditingController.text;
                      print(val);
                    },
//                    autofocus: false,
                    cursorColor: appThemeData.primaryColor,
                    style: TextStyle(
                        color: appThemeData.primaryColor,
                        fontSize: Config.xMargin(context, 5.5)),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            Config.xMargin(context, 1),
                          ),
                        ),
                        borderSide:
                            BorderSide(color: appThemeData.primaryColor),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            Config.xMargin(context, 1),
                          ),
                        ),
                        borderSide:
                            BorderSide(color: appThemeData.primaryColorDark),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Config.yMargin(context, 3.04),
                  ),
                  Text(
                    'Other Information',
                    style: TextStyle(
                        fontFamily: 'Open Sans',
                        color: infoEditingController.text.isNotEmpty == true
                            ? appThemeData.primaryColor
                            : appThemeData.primaryColorDark),
                  ),
                  SizedBox(
                    height: Config.yMargin(context, 1.01),
                  ),
                  TextField(
                    controller: infoEditingController,
                    focusNode: _infofocusNode,
                    onChanged: (val) {
                      val = infoEditingController.text;
                      print(val);
                    },
                    cursorColor: appThemeData.primaryColor,
                    style: TextStyle(
                        color: appThemeData.primaryColor,
                        fontSize: Config.xMargin(context, 5.5)),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            Config.xMargin(context, 1),
                          ),
                        ),
                        borderSide:
                            BorderSide(color: appThemeData.primaryColor),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            Config.xMargin(context, 1),
                          ),
                        ),
                        borderSide: BorderSide(
                            color: Theme.of(context).primaryColorDark),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Config.yMargin(context, 6.33),
                  ),
                ],
              ),
              Container(
                height: Config.yMargin(context, 6),
                child: FlatButton(
                  color: appThemeData.buttonColor,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(width * 0.01),
                  ),
                  child: Text(
                    'Add',
                    style: TextStyle(
                        color: appThemeData.primaryColorLight,
                        fontFamily: 'Open Sans',
                        fontSize: Config.textSize(context, 4.375),
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

//    return Consumer<AddMoneyModel>(
//      builder:
//          (BuildContext context, AddMoneyModel addMoneyModel, Widget child) {
//        return Scaffold(
//          backgroundColor: appThemeData.backgroundColor,
//          appBar: AppBar(
//            elevation: 0,
//            backgroundColor: appThemeData.backgroundColor,
//            title: Text(
//              'Add Money',
//              style: TextStyle(
//                  color: appThemeData.primaryColor,
//                  fontFamily: 'Open Sans',
//                  fontSize: Config.xMargin(context, 6.11),
//                  fontWeight: FontWeight.w600),
//            ),
//          ),
//          body: SafeArea(
//            child: Padding(
//              padding: const EdgeInsets.all(12.0),
//              child: ListView(
////                crossAxisAlignment: CrossAxisAlignment.stretch,
//                children: <Widget>[
//                  Column(
//                    crossAxisAlignment: CrossAxisAlignment.start,
//                    children: <Widget>[
//                      SizedBox(
//                        height: Config.yMargin(context, 2.53),
//                      ),
//                      Text(
//                        'Category',
//                        style: TextStyle(fontFamily: 'Open Sans'),
//                      ),
//                      SizedBox(
//                        height: Config.yMargin(context, 1.01),
//                      ),
//                      FormField<String>(
//                        builder: (FormFieldState<String> state) {
//                          return InputDecorator(
//                            decoration: InputDecoration(
//                              hintText: 'Savings',
//                              border: OutlineInputBorder(
//                                borderRadius: BorderRadius.all(
//                                  Radius.circular(
//                                    Config.xMargin(context, 1),
//                                  ),
//                                ),
//                              ),
//                            ),
//                            isEmpty: false,
//                            child: DropdownButtonHideUnderline(
//                              child: DropdownButton(
//                                icon: Icon(
//                                  Icons.arrow_drop_down,
//                                  size: Config.xMargin(context, 8),
//                                ),
//                                value: addMoneyModel.selectedMoneyItem,
////                          value: null,
//                                isDense: true,
//                                items: addMoneyModel.moneyItems.map((value) {
//                                  return DropdownMenuItem<DropdownItem>(
//                                    value: value,
//                                    child: value,
//                                  );
//                                }).toList(),
//                                onChanged: (value) {
//                                  addMoneyModel.updateItem(value);
//                                },
//                              ),
//                            ),
//                          );
//                        },
//                      ),
//                      SizedBox(
//                        height: Config.yMargin(context, 3.04),
//                      ),
//                      Text(
//                        'Amount',
//                        style: TextStyle(fontFamily: 'Open Sans'),
//                      ),
//                      SizedBox(
//                        height: Config.yMargin(context, 1.01),
//                      ),
//                      TextField(
//                        controller: amountEditingController,
//                        focusNode: _amountfocusNode,
////                        autofocus: false,
//                        cursorColor: appThemeData.primaryColor,
//                        style: TextStyle(
//                            color: appThemeData.primaryColor,
//                            fontSize: Config.xMargin(context, 5.5)),
//                        decoration: InputDecoration(
//                          focusedBorder: OutlineInputBorder(
//                            borderRadius: BorderRadius.all(
//                              Radius.circular(
//                                Config.xMargin(context, 1),
//                              ),
//                            ),
//                            borderSide:
//                                BorderSide(color: appThemeData.primaryColor),
//                          ),
//                          border: OutlineInputBorder(
//                            borderRadius: BorderRadius.all(
//                              Radius.circular(
//                                Config.xMargin(context, 1),
//                              ),
//                            ),
//                            borderSide:
//                                BorderSide(color: appThemeData.primaryColor),
//                          ),
//                        ),
//                      ),
//                      SizedBox(
//                        height: Config.yMargin(context, 3.04),
//                      ),
//                      Text(
//                        'Other Information',
//                        style: TextStyle(fontFamily: 'Open Sans'),
//                      ),
//                      SizedBox(
//                        height: Config.yMargin(context, 1.01),
//                      ),
////                      TextField(
////                        controller: infoEditingController,
//////                        focusNode: _focusNode,
////                        cursorColor: appThemeData.primaryColor,
////                        style: TextStyle(
////                            color: appThemeData.primaryColor,
////                            fontSize: Config.xMargin(context, 5.5)),
////                        decoration: InputDecoration(
////                          focusedBorder: OutlineInputBorder(
////                            borderRadius: BorderRadius.all(
////                              Radius.circular(
////                                Config.xMargin(context, 1),
////                              ),
////                            ),
////                            borderSide:
////                                BorderSide(color: appThemeData.primaryColor),
////                          ),
////                          border: OutlineInputBorder(
////                            borderRadius: BorderRadius.all(
////                              Radius.circular(
////                                Config.xMargin(context, 1),
////                              ),
////                            ),
////                            borderSide: BorderSide(
////                                color: Theme.of(context).primaryColorDark),
////                          ),
////                        ),
////                      ),
//                      SizedBox(
//                        height: Config.yMargin(context, 6.33),
//                      ),
//                    ],
//                  ),
//                  Container(
//                    height: Config.yMargin(context, 5.5),
//                    child: FlatButton(
//                      color: appThemeData.buttonColor,
//                      onPressed: () {},
//                      shape: RoundedRectangleBorder(
//                        borderRadius: BorderRadius.circular(width * 0.01),
//                      ),
//                      child: Text(
//                        'Sign Up',
//                        style: TextStyle(
//                            color: appThemeData.primaryColorLight,
//                            fontFamily: 'Open Sans',
//                            fontSize: Config.textSize(context, 4.375),
//                            fontWeight: FontWeight.w600),
//                      ),
//                    ),
//                  ),
//                ],
//              ),
//            ),
//          ),
//        );
//      },
//    );
  }
}
