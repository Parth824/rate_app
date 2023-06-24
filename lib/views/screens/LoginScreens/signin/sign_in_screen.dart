import 'package:flutter/material.dart';
import 'package:rentapp/views/screens/Employee/homepage/homepage.dart';
import '../../../../components/custom_suffix.dart';
import '../../../../components/default_button.dart';
import '../../../../components/form_error.dart';
import '../../../../components/signup_text.dart';
import '../../../../components/social_circle.dart';
import '../../../../constants.dart';
import '../../../../size_config.dart';
import '../../Doctor/homepage/homepage.dart';
import '../forgot_password/forgot_pass_screen.dart';
import '../login_success/login_success_screen.dart';

class SigniInScreen extends StatefulWidget {
  const SigniInScreen({Key? key}) : super(key: key);
  static String routeName = "/signin";

  @override
  State<SigniInScreen> createState() => _SigniInScreenState();
}

class _SigniInScreenState extends State<SigniInScreen> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];

  String? email;
  String? password;

  bool remember = false;

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error!);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  int isDoc = 1;
  int isEmp = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Sign in"),
          elevation: 0,
        ),
        body: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
            ),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Image.asset('assets/images/logo.png'),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        buildEmailFormField(),
                        SizedBox(
                          height: getProportionateScreenHeight(20),
                        ),
                        buildPasswordFormField(),
                        SizedBox(
                          height: getProportionateScreenHeight(20),
                        ),
                        Row(
                          children: [
                            Spacer(),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, ForgotPasswordScreen.routeName);
                              },
                              child: Text(
                                "Forgotton Password",
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                            )
                          ],
                        ),
                        FormError(errors: errors),
                        SizedBox(
                          height: getProportionateScreenHeight(20),
                        ),
                        DefaultButton(
                            text: "Continue",
                            press: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                                Navigator.pushNamed(
                                    context, LoginSuccessScreen.routeName);
                              }
                            }),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(40),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SocialCircle(
                          icon: 'assets/images/doctor.png',
                          press: () {
                            Navigator.pushNamed(context, DoctorHomePage.routeName);
                            setState(() {
                              isDoc == 1;
                              isEmp == 0;
                            });
                          },
                          color: (isDoc == 1)
                              ? Colors.blue.shade100
                              : Colors.grey.shade100),
                      SocialCircle(
                          icon: 'assets/images/employee.png',
                          press: () {
                            Navigator.pushNamed(context, EmployeeHomePage.routeName);
                            setState(() {
                              isDoc == 0;
                              isEmp == 1;
                            });
                          },
                          color: (isEmp == 1)
                              ? Colors.blue.shade100
                              : Colors.grey.shade100),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(40),
                  ),
                  SignUpText(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      onSaved: (val) {
        password = val;
      },
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if (value.length >= 8 && errors.contains(kShortPassError)) {
          setState(() {
            errors.remove(kShortPassError);
          });
          return;
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
          return "";
        } else if (value.length < 8 && !errors.contains(kShortPassError)) {
          setState(() {
            errors.add(kShortPassError);
          });
          return "";
        }
      },
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.done,
      obscureText: true,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(getProportionateScreenHeight(25))),
        labelText: "Password",
        hintText: "Enter your password",
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      onSaved: (val) {
        email = val;
      },
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
          return "";
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(getProportionateScreenHeight(25))),
        labelText: "Email",
        hintText: "Enter your email",
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }
}
