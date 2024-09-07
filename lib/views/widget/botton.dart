import 'package:flutter/material.dart';

class Botton extends StatelessWidget {
  final Color color ;
  final double height ;
  final double width ;
  final String title ;
  final TextStyle style ;
  final double red ;
  final void Function()? onPressed ;

  const Botton({super.key, required this.color, required this.height, required this.width, required this.title, required this.style, required this.red, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
     onPressed: onPressed,
     style: ButtonStyle(
      shape:WidgetStatePropertyAll(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(red)
      )),
      overlayColor:WidgetStatePropertyAll(Colors.white.withOpacity(0)),
      backgroundColor: WidgetStatePropertyAll(color),
     ),
     child: Container(
      alignment: Alignment.center,
      height: height ,
      width: width,
      child: Text(title , style: style),
     ));
  }
}