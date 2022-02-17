// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:ungtiktok/utility/my_constant.dart';

class ShowImage extends StatelessWidget {
  final String? path;
  const ShowImage({
    Key? key,
    this.path,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(path ?? MyConstant.image1);
  }
}
