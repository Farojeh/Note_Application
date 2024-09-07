import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/constans.dart';
import 'package:notes/controller/search_controller.dart';
import 'package:notes/views/widget/custom_text_field.dart';

class SearchPart extends StatefulWidget {
  const SearchPart({super.key});

  @override
  State<SearchPart> createState() => _SearchPartState();
}

class _SearchPartState extends State<SearchPart> {
   
   final controller = Get.put(SearchhController());


  @override
  Widget build(BuildContext context) {
    return  Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                elevation: 10,
                child: CustomTextField(
                  onChanged: (value){
                    controller.search(value);
                  },
                  icon:const Padding(
                    padding:  EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.search,
                      size: 25,
                      color: Colors.black,
                    ),
                  ),
                  inputborder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide:const BorderSide(color: Colors.black87, width: 1.3)),
                  hint: "  Search what you want",
                  textStyle:const TextStyle(
                      color: Colors.black54,
                      fontFamily: Constans.font,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ));
  }
}