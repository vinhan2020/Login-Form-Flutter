import 'package:flutter/material.dart';
import 'package:flutter_application/Components/already_have_account_acheck.dart';
import 'package:flutter_application/Components/rounded_button.dart';
import 'package:flutter_application/Components/rounded_password_field.dart';
import 'package:flutter_application/Components/rounded_text_field.dart';
import 'package:flutter_application/Screens/Login/login_screen.dart';
import 'package:flutter_application/Screens/Signin/components/background.dart';
import 'package:flutter_application/Screens/Signin/components/or_divider.dart';
import 'package:flutter_application/Screens/Signin/components/socialIcon.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.4,
            ),
            // sign up input field
            RoundedTextField(hintText: "Your Email", onChanged: (value) {}),
            RoundedPasswordField(hintText: "Password", onchaned: (value) {}),
            RoundedButton(text: "SIGNUP", press: () {}),
            AlreadyHaveAccountaCheck(
                login: false,
                press: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                      (route) => false);
                }),
            const OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(srcImg: "assets/icons/facebook.svg", press: () {}),
                SocialIcon(srcImg: "assets/icons/twitter.svg", press: () {}),
                SocialIcon(srcImg: "assets/icons/google-plus.svg", press: () {})
              ],
            ),
          ],
        ),
      ),
    );
  }
}
