import 'package:cotani_rework/components/default_button.dart';
import 'package:cotani_rework/components/form_error.dart';
import 'package:cotani_rework/constants.dart';
import 'package:cotani_rework/screens/home/home_screen.dart';
import 'package:cotani_rework/screens/sign_in/sign_in_screen.dart';
import 'package:cotani_rework/size_config.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String? name;
  String? email;
  String? password;
  String? confirm_password;
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
      child: Column(
        children: [
          buildNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildConfirmPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(30)),
          DefaultButton(
            text: "Sign Up", 
            press: () {
              if (_formKey.currentState!.validate()) {
                Navigator.popAndPushNamed(context, SignInScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildNameFormField() {
    return TextFormField(
          onSaved: (newValue) => name = newValue,
          onChanged: (value) {
          if (value.isNotEmpty) {
            removeError(error: kNameNullError);
          }
            return null;
          },
          validator: (value) {
            if (value!.isEmpty) {
              addError(error: kNameNullError);
              return "";
            }
            return null;
          },
          decoration: InputDecoration(
            labelText: "Name",
            hintText: "Enter your name",
            floatingLabelBehavior: FloatingLabelBehavior.always,
          ),
        );
  }

  TextFormField buildConfirmPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => confirm_password = newValue,
      onChanged: (value) {
      if (password == confirm_password) {
          removeError(error: kMatchPassError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          return "";
        } else if (password != confirm_password) {
          addError(error: kMatchPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Confirm Password",
        hintText: "Re-enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
      if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        password = value;
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
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
      if (value.isNotEmpty) {
        removeError(error: kEmailNullError);
      } else if (emailValidatorRegExp.hasMatch(value)) {
        removeError(error: kInvalidEmailError);
      }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
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