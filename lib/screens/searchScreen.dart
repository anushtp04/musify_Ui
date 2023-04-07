import 'package:flutter/material.dart';
import 'package:spotify/components/appBar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appbarTitle: "Search"),
      body: Center(child: Text("Search Page"),),
    );
  }
}
