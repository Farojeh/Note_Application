import 'package:flutter/material.dart';

class LeadingAppbar extends StatelessWidget {
  const LeadingAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){},
    style: ButtonStyle(
      overlayColor:WidgetStatePropertyAll(Colors.white.withOpacity(0.0))
    ),
    child :const Icon(Icons.list , size: 35, color: Colors.white,));
  }
}