import 'package:flutter/material.dart';
import 'package:notes/constans.dart';

class CustomTextField extends StatelessWidget {
  final String hint ;
  final int maxline ;
  final void Function(String?)? onsaved ;
  final void Function(String)? onChanged ;
  final InputBorder? inputborder ;
  final TextStyle? textStyle ;
  final Widget? icon ;
  const CustomTextField({super.key, required this.hint,  this.maxline =1, this.onsaved, this.onChanged, this.inputborder, this.textStyle, this.icon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged:onChanged ,
      onSaved: onsaved,
      validator: (value) {
        if(value?.isEmpty??true ){
          return "Field is required";
        }
        return null ;
      },
      maxLines: maxline,
      cursorColor:const Color.fromARGB(255, 194, 143, 3),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle:textStyle?? textstyle(),
        border:inputborder?? buildborder(Colors.black, 20),
        focusedBorder:inputborder?? buildborder(Colors.black , 20),
        enabledBorder:inputborder?? buildborder(Colors.black , 20),
        suffixIcon: icon
      ) ,
    );
  }

  TextStyle textstyle() {
    return const TextStyle(color:  Color.fromARGB(255, 170, 152, 61),
      fontSize: 21,
      wordSpacing: 2.5,
      letterSpacing: 0.8,
      fontFamily: Constans.font,
      fontWeight: FontWeight.bold
      );
  }
  
  OutlineInputBorder buildborder(Color color , double red){
    return OutlineInputBorder(
          borderRadius: BorderRadius.circular(red),
          borderSide: BorderSide(
            color:color,
            width: 1.3
          )
        );
  }
}