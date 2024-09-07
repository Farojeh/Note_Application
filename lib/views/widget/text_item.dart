import 'package:flutter/material.dart';

class TextItem extends StatelessWidget {
 final String title ;
 final double size ;
 final Color color ;
 final String? fontfamily ;
 final double top ;
 final double bottom ;
 final double left ;
 final double right ;
  const TextItem({super.key, required this.title, required this.size, required this.color, required this.fontfamily, required this.top, required this.bottom, required this.left, required this.right});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(left: left , top: top , right: right , bottom: bottom),
          child: Text(title,
          style: TextStyle(
            fontSize: size,
            color: color,
            fontFamily: fontfamily,
            overflow: TextOverflow.ellipsis
          ),),);
  }
}