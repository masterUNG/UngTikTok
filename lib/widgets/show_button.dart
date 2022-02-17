// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:ungtiktok/utility/my_constant.dart';

class ShowButton extends StatelessWidget {
  final String label;
  final double? width;
  final Function() pressedFunc;
  const ShowButton({
    Key? key,
    required this.label,
    this.width,
    required this.pressedFunc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: MyConstant.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: pressedFunc,
        child: Text(label),
      ),
    );
  }
}
