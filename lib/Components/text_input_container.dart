import 'package:flutter/material.dart';
import 'package:flutter_application/constains.dart';

class TextInputContainer extends StatelessWidget {
  final Widget child;
  const TextInputContainer({
    Key? key,
    required this.child,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding:const  EdgeInsets.symmetric( horizontal: 20),
      width: size.width * 0.8,
      height: size.height * 0.07,
      decoration: const BoxDecoration(
        color:  kPrimaryLightColor,
        borderRadius: BorderRadius.all(Radius.circular(29))
      ),
      child: child,
    );
  }
}
