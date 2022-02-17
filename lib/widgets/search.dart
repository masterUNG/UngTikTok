import 'package:flutter/material.dart';
import 'package:ungtiktok/widgets/show_text.dart';

class Search extends StatelessWidget {
  const Search({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ShowText(label: 'Search'),
    );
  }
}
