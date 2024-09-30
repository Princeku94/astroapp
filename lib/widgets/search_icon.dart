import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        cursorColor: Colors.black,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: Color(0xff64658A),
            size: 32,
          ),
          hintStyle: const TextStyle(
              color: Color(0xff64658A), fontWeight: FontWeight.w400),
          hintText: "Search marriage, carrier, etc.",
          filled: true,
          fillColor: const Color.fromARGB(255, 32, 32, 58),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(width: 1, color: Colors.blue),
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white12, width: 2),
              borderRadius: BorderRadius.circular(8.0)),
        ),
      ),
    );
  }
}
