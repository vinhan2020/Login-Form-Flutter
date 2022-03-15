import 'package:flutter/material.dart';
import 'package:flutter_application/Components/already_have_account_acheck.dart';
import 'package:flutter_application/Components/rounded_button.dart';
import 'package:flutter_application/Components/rounded_password_field.dart';
import 'package:flutter_application/Components/rounded_text_field.dart';
import 'package:flutter_application/Components/text_input_container.dart';
import 'package:flutter_application/Screens/Login/components/background.dart';
import 'package:flutter_application/Screens/Signin/signup_screen.dart';
import 'package:flutter_application/constains.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "LOGIN",
              style:
                  TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
            ),
            SvgPicture.asset("assets/icons/login.svg",
                height: size.height * 0.3),
            RoundedTextField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              hintText: "Passowrd",
              onchaned: (value) {},
            ),
            RoundedButton(text: "LOGIN", press: () {
            
            }),
            AlreadyHaveAccountaCheck(
              press: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUpScreen()),
                    (route) => false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
