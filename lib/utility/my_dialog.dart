// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:ungtiktok/utility/my_constant.dart';
import 'package:ungtiktok/widgets/show_image.dart';
import 'package:ungtiktok/widgets/show_text.dart';

class MyDialog {
  final BuildContext context;
  MyDialog({
    required this.context,
  });

  Future<void> actionDialog({
    required String title,
    required String subTitle,
    String? label,
    Function()? actionFunc,
  }) async {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: ListTile(
          leading: ShowImage(
            path: MyConstant.image2,
          ),
          title: ShowText(
            label: title,
            textStyle: MyConstant().h2Style(),
          ),
          subtitle: ShowText(label: subTitle),
        ),
        actions: [
          TextButton(
              onPressed: actionFunc ?? () => Navigator.pop(context),
              child: ShowText(
                label: label ?? 'OK',
                textStyle: MyConstant().h3ButtonStyle(),
              ))
        ],
      ),
    );
  }
}
