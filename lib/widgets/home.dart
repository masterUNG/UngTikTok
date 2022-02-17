import 'package:flutter/material.dart';
import 'package:ungtiktok/widgets/show_text.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: ShowText(label: 'Home for show video player')),
    );
  }
}
