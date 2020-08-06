import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:networthapp/ui/Theme/appTheme.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: true);
    return LogInScreen();
  }
}

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  bool obscureText = true;
  bool value = false;

  FocusNode nameNode = new FocusNode();
  FocusNode passwordNode = new FocusNode();
  FocusNode emailNode = new FocusNode();
  String _username, _email, _password = "";
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: SafeArea(
        child: Scaffold(
          body: Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 13.w),
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(top: 50.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Welcome Back',
                        style: TextStyle(
                            fontSize: 25.sp,
                            fontWeight: FontWeight.bold,
                            color: appThemeData.primaryColorDark),
                      ),
                      SizedBox(height: 20.h),
                      RichText(
                        text: TextSpan(
                          text: 'Fill in your details',
                          style: TextStyle(
                              color: appThemeData.primaryColorDark,
                              fontSize: 17.sp),
                        ),
                      ),
                      SizedBox(height: 60.h),
                      Text(
                        'Email Address',
                        style: TextStyle(
                            color: emailNode.hasFocus
                                ? appThemeData.primaryColor
                                : Colors.black87,
                            fontSize: 15.sp),
                      ),
                      SizedBox(height: 12.h),
                      TextFormField(
                        style: TextStyle(
                            color: emailNode.hasFocus
                                ? appThemeData.primaryColor
                                : appThemeData.primaryColorDark),
                        keyboardType: TextInputType.emailAddress,
                        focusNode: emailNode,
                        controller: emailController,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 0.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: appThemeData.primaryColor, width: 1),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.w),
                            ),
                          ),
                        ),
                        textInputAction: TextInputAction.next,
                        validator: (email) => EmailValidator.validate(email)
                            ? null
                            : "Invalid email address",
                        onSaved: (email) => _email = email,
                        onFieldSubmitted: (_) {
                          fieldFocusChange(context, emailNode, passwordNode);
                        },
                      ),
                      SizedBox(height: 30.h),
                      Text(
                        'Password',
                        style: TextStyle(
                            color: passwordNode.hasFocus
                                ? appThemeData.primaryColor
                                : Colors.black87,
                            fontSize: 15.sp),
                      ),
                      SizedBox(height: 12.h),
                      TextFormField(
                        obscureText: obscureText,
                        style: TextStyle(
                            color: passwordNode.hasFocus
                                ? appThemeData.primaryColor
                                : appThemeData.primaryColorDark),
                        focusNode: passwordNode,
                        controller: passwordController,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 0.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: appThemeData.primaryColor, width: 1),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(Icons.remove_red_eye,
                                color: appThemeData.primaryColorDark),
                            onPressed: () {
                              setState(() {
                                obscureText = !obscureText;
                              });
                            },
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.w),
                            ),
                          ),
                        ),
                        textInputAction: TextInputAction.done,
                        validator: (password) {
                          Pattern pattern =
                              r'^(?=.*[0-9]+.*)(?=.*[a-zA-Z]+.*)[0-9a-zA-Z]{6,}$';
                          RegExp regex = new RegExp(pattern);
                          if (!regex.hasMatch(password))
                            return 'Password must contain at least one letter, one number \nand must be greater than six charaters';
                          else
                            return null;
                        },
                        onSaved: (password) => _password = password,
                      ),
                      SizedBox(height: 12.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 26.w,
                                  child: Checkbox(
                                    activeColor: appThemeData.buttonColor,
                                    value: value,
                                    onChanged: (bool newValue) {
                                      setState(() {
                                        value = newValue;
                                      });
                                    },
                                  ),
                                ),
                                Text(
                                  'Remember Me',
                                  style: TextStyle(fontSize: 13.sp),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'Forgot Password?',
                            style: TextStyle(color: appThemeData.primaryColor),
                          )
                        ],
                      ),
                      SizedBox(height: 54.h),
                      GestureDetector(
                        onTap: () {
                          if (_formKey.currentState.validate()) {
                            _formKey.currentState.save();
                          }
                        },
                        child: Container(
                          height: 54.w,
                          child: Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: appThemeData.primaryColorLight,
                                  fontSize: 15.sp),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: appThemeData.buttonColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.w))),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void fieldFocusChange(
    BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
  currentFocus.unfocus();
  FocusScope.of(context).requestFocus(nextFocus);
}
