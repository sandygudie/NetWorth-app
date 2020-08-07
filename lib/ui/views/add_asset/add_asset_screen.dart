import 'package:flutter/material.dart';
import 'package:networthapp/ui/components/DropdownItem.dart';
import 'package:networthapp/ui/Theme/appTheme.dart';
import 'package:networthapp/ui/size_config/config.dart';
import 'package:networthapp/ui/views/add_asset/add_asset_model.dart';
import 'package:provider/provider.dart';

class AddAssetScreen extends StatefulWidget {
  @override
  _AddAssetScreenState createState() => _AddAssetScreenState();
}

class _AddAssetScreenState extends State<AddAssetScreen> {
  TextEditingController _typeEditingController = TextEditingController();
  TextEditingController _locationEditingController = TextEditingController();
  TextEditingController _valueEditingController = TextEditingController();

  FocusNode _typefocusNode = FocusNode();
  FocusNode _locationfocusNode = FocusNode();
  FocusNode _valuefocusNode = FocusNode();

  String type;
  bool showLocation;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    var addAssetModel = Provider.of<AddAssetModel>(context);

    type = addAssetModel.selectedAssetItem == 'Real Estate'
        ? 'Type(Land,house,etc)'
        : addAssetModel.selectedAssetItem == 'Valuables'
            ? 'Type(Cars,jewelry,etc)'
            : addAssetModel.selectedAssetItem == 'Investments'
                ? 'Type(Stocks,crypto,etc)'
                : '';

    showLocation =
        addAssetModel.selectedAssetItem == 'Real Estate' ? true : false;

    return Scaffold(
      backgroundColor: appThemeData.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: appThemeData.backgroundColor,
        title: Text(
          'Add An Asset',
          textAlign: TextAlign.start,
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
                            value: addAssetModel.selectedAssetItem,
//                          value: null,
                            isDense: true,
                            items: AddAssetModel.assetItems.map((value) {
                              return DropdownMenuItem<dynamic>(
                                value: value.itemName,
                                child: value,
                              );
                            }).toList(),
                            onChanged: (value) {
                              addAssetModel.updateItem(value);
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
                    type,
                    style: TextStyle(
                        fontFamily: 'Open Sans',
                        color: _typeEditingController.text.isNotEmpty == true
                            ? appThemeData.primaryColor
                            : appThemeData.primaryColorDark),
                  ),
                  SizedBox(
                    height: Config.yMargin(context, 1.01),
                  ),
                  TextField(
                    controller: _typeEditingController,
                    focusNode: _typefocusNode,
                    onChanged: (val) {
                      val = _typeEditingController.text;
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
                  Visibility(
                    visible: showLocation,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Location',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontFamily: 'Open Sans',
                              color:
                                  _locationEditingController.text.isNotEmpty ==
                                          true
                                      ? appThemeData.primaryColor
                                      : appThemeData.primaryColorDark),
                        ),
                        SizedBox(
                          height: Config.yMargin(context, 1.01),
                        ),
                        TextField(
                          controller: _locationEditingController,
                          focusNode: _locationfocusNode,
                          onChanged: (val) {
                            val = _locationEditingController.text;
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
                              borderSide: BorderSide(
                                  color: appThemeData.primaryColorDark),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Config.yMargin(context, 3.04),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Value',
                    style: TextStyle(
                        fontFamily: 'Open Sans',
                        color: _valueEditingController.text.isNotEmpty == true
                            ? appThemeData.primaryColor
                            : appThemeData.primaryColorDark),
                  ),
                  SizedBox(
                    height: Config.yMargin(context, 1.01),
                  ),
                  TextField(
                    controller: _valueEditingController,
                    focusNode: _valuefocusNode,
                    onChanged: (val) {
                      val = _valueEditingController.text;
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
                height: Config.yMargin(context, 6.5),
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
