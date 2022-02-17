import 'package:flutter/material.dart';
import 'package:ungtiktok/widgets/show_text.dart';

class Message extends StatelessWidget {
  const Message({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ShowText(label: 'Message'),
    );
  }
}
