
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchFiled extends StatefulWidget {

  final String hintTxt;
  const SearchFiled({Key? key, required this.hintTxt}) : super(key: key);

  @override
  State<SearchFiled> createState() => _SearchFiled();

}

class _SearchFiled extends State<SearchFiled>{
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(

        style:TextStyle(fontSize:12),
        decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
            labelStyle:TextStyle(fontSize:12),
            hintStyle: TextStyle(fontSize:12),
            hintText: widget.hintTxt,
            filled: true,
            fillColor: const Color(0xFFCFDFE2),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    color: Color(0xFFf3f3f2), width: 1),
                borderRadius: BorderRadius.circular(10)),
            //labelText: "01266",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(),
            ),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  color: Color(0xff115F6E), width: 1),
              borderRadius: BorderRadius.circular(10)),),
        keyboardType: TextInputType.text,
      ),
    );
  }
}