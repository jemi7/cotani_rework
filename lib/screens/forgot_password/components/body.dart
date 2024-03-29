import 'package:cotani_rework/components/default_button.dart';
import 'package:cotani_rework/components/form_error.dart';
import 'package:cotani_rework/size_config.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight! * 0.04),
              Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Please enter your e-mail and we will send \nyou a link to return to your account",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.1),
              ForgotPassForm(),
            ]
          ),
        ),
      )
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  const ForgotPassForm({super.key});

  @override
  State<ForgotPassForm> createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  List<String> errors = [];
  String? email;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue,
            onChanged: (value) {
            if (value.isNotEmpty && errors.contains(kEmailNullError)) {
              setState(() {
                errors.remove(kEmailNullError);
              });
            } else if (emailValidatorRegExp.hasMatch(value) && errors.contains(kInvalidEmailError)) {
              setState(() {
                errors.remove(kInvalidEmailError);
              });
              }
              return null;
            },
            validator: (value) {
              if (value!.isEmpty && !errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
              } else if (!emailValidatorRegExp.hasMatch(value) && !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.add(kInvalidEmailError);
                });
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "E-mail",
              hintText: "Enter your e-mail",
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight! * 0.1),
          DefaultButton(
            text: "Continue", 
            press: () {},
          ),
          SizedBox(height: SizeConfig.screenHeight! * 0.1),
        ],
      ),
    );
  }
}