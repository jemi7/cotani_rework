import 'package:cotani_rework/components/default_button.dart';
import 'package:cotani_rework/components/form_error.dart';
import 'package:cotani_rework/constants.dart';
import 'package:cotani_rework/size_config.dart';
import 'package:flutter/material.dart';

import '../../forgot_password/forgot_password_screen.dart';
import '../../home/home_screen.dart';

class SignForm extends StatefulWidget {
  const SignForm({super.key});

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool remember = false;
  final List<String> errors = [];

  void addError({required String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({required String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordformField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value!;
                  });
                },
              ),
              Text("Remember me"),
              Spacer(),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, ForgotPasswordScreen.routeName),
                child: Text(
                  "Forgot Password", 
                  style: TextStyle(
                    decoration: TextDecoration.underline
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultButton(
            text: "Log In",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                Navigator.popAndPushNamed(context, HomeScreen.routeName);
              }
            },
          ),
        ],
      )
    );
  }

  TextFormField buildPasswordformField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
      if (value.isNotEmpty && errors.contains(kPassNullError)) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8 && errors.contains(kShortPassError)) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPassNullError)) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length <8 && !errors.contains(kShortPassError)) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value) && errors.contains(kInvalidEmailError)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kEmailNullError)) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value) && !errors.contains(kInvalidEmailError)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "E-mail",
        hintText: "Enter your e-mail",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}