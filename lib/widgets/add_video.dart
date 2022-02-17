import 'package:flutter/material.dart';
import 'package:ungtiktok/widgets/show_text.dart';

class AddVideo extends StatelessWidget {
  const AddVideo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ShowText(label: 'Add Video'),
    );
  }
}
