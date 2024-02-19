
import 'package:flutter/material.dart';

class ChatSearchField extends StatefulWidget {

  final String hintTxt;
  final TextEditingController controller;
  const ChatSearchField({Key? key, required this.hintTxt, required this.controller}) : super(key: key);

  @override
  State<ChatSearchField> createState() => _ChatSearchFiled();

}

class _ChatSearchFiled extends State<ChatSearchField>{
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        controller: widget.controller,
        style:const TextStyle(fontSize:12),
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          labelStyle:const TextStyle(fontSize:12),
          hintStyle: const TextStyle(fontSize:12),
          hintText: widget.hintTxt,
          filled: true,
          fillColor: const Color(0xFFCFDFE2),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  color: Color(0xFFf3f3f2), width: 1),
              borderRadius: BorderRadius.circular(10)),
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