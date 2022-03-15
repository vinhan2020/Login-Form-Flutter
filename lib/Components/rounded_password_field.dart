import 'package:flutter/material.dart';
import 'package:flutter_application/Components/text_input_container.dart';
import 'package:flutter_application/constains.dart';

class RoundedPasswordField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onchaned;
  const RoundedPasswordField({
    Key? key,
    required this.hintText,
    this.icon = Icons.lock,
    required this.onchaned,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextInputContainer(
        child: TextField(
      obscureText: true,
      onChanged: onchaned,
      decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          suffixIcon: const Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none),
    ));
  }
}
