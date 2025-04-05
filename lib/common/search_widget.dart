
import 'package:flutter/material.dart';

import 'common.dart';

class SearchWidget extends StatelessWidget {
  var controller=TextEditingController();
  final ValueChanged onChanged;
  SearchWidget({
    required this.controller,
    required this.onChanged,
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration:  InputDecoration(
        hintText: "Search for products or stores",
        hintStyle: const TextStyle(fontSize: 12, color: Colors.black38),
        prefixIcon: Image.asset("assets/search.png"),
        // prefixIconConstraints:BoxConstraints(maxWidth: 40),
        isDense: true,
        filled: true,
        fillColor: grayBackground,
        contentPadding:
        const EdgeInsets.symmetric(vertical: 14, horizontal: 15),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            )
        ),
        border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            )),
      ),
      onChanged: onChanged,
    );
  }
}