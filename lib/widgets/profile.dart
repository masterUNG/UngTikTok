import 'package:flutter/material.dart';
import 'package:ungtiktok/widgets/show_text.dart';

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ShowText(label: 'Profile'),
    );
  }
}
