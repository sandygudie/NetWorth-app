import 'package:flutter/material.dart';
import 'package:networthapp/ui/DropdownItem.dart';
import 'package:networthapp/ui/Theme/appTheme.dart';

import 'package:networthapp/ui/size_config/config.dart';
import 'package:networthapp/ui/views/add_debt/add_debt_screen_model.dart';
import 'package:provider/provider.dart';

class AddDebtScreen extends StatefulWidget {
  @override
  _AddDebtScreenState createState() => _AddDebtScreenState();
}

class _AddDebtScreenState extends State<AddDebtScreen> {
  TextEditingController _amountEditingController = TextEditingController();
  TextEditingController _lengthEditingController = TextEditingController();
//  TextEditingController _valueEditingController = TextEditingController();

  FocusNode _amountfocusNode = FocusNode();
  FocusNode _lengthfocusNode = FocusNode();
//  FocusNode _valuefocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    var addDebtModel = Provider.of<AddDebtModel>(context);

    return Scaffold(
      backgroundColor: appThemeData.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: appThemeData.backgroundColor,
        title: Text(
          'Add Debt',
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
                          hintText: 'Savings',
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
                            value: addDebtModel.selectedDebtItem,
//                          value: null,
                            isDense: true,
                            items: addDebtModel.debtItems.map((value) {
                              return DropdownMenuItem<DropdownItem>(
                                value: value,
                                child: value,
                              );
                            }).toList(),
                            onChanged: (value) {
                              addDebtModel.updateItem(value);
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
                    'Per',
                    style: TextStyle(
                      fontFamily: 'Open Sans',
                    ),
                  ),
                  SizedBox(
                    height: Config.yMargin(context, 1.01),
                  ),
                  FormField<String>(
                    builder: (FormFieldState<String> state) {
                      return InputDecorator(
                        decoration: InputDecoration(
//                          filled: true,
//                          fillColor: Theme.of(context).primaryColorLight,
//                          hintText: 'hint',
//                          hintStyle: TextStyle(
//                            color: Colors.black38,
//                            fontSize: Config.xMargin(context, 5),
//                          ),
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
                          child: DropdownButton<String>(
                            icon: Icon(
                              Icons.arrow_drop_down,
                              size: Config.xMargin(context, 8),
                            ),
                            value: addDebtModel.selectedPeriod,
                            isDense: true,
                            onChanged: (String newValue) {
                              FocusScope.of(context)
                                  .requestFocus(new FocusNode());
                              setState(() {
                                addDebtModel.selectedPeriod = newValue;
                                state.didChange(newValue);
                              });
                              addDebtModel.updatePeriod(newValue);
                            },
                            items: addDebtModel.period.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: Config.yMargin(context, 3.04),
                  ),
                  Text(
                    'Length of time',
                    style: TextStyle(
                        fontFamily: 'Open Sans',
                        color: _lengthEditingController.text.isNotEmpty == true
                            ? appThemeData.primaryColor
                            : appThemeData.primaryColorDark),
                  ),
                  SizedBox(
                    height: Config.yMargin(context, 1.01),
                  ),
                  TextField(
                    controller: _lengthEditingController,
                    focusNode: _lengthfocusNode,
                    onChanged: (val) {
                      val = _lengthEditingController.text;
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
                height: Config.yMargin(context, 5.5),
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
  }
}
