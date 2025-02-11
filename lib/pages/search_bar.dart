import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      padding: const MaterialStatePropertyAll(EdgeInsets.only(left: 20)),
      leading: const Icon(Icons.search),
      hintText: "Search",
      hintStyle: const MaterialStatePropertyAll(
          TextStyle(fontWeight: FontWeight.w400, fontSize: 15)),
      backgroundColor: const MaterialStatePropertyAll(Colors.white70),
    );
  }
}
