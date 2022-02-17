// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ungtiktok/utility/my_constant.dart';
import 'package:ungtiktok/widgets/show_image.dart';

class BackgroundMain extends StatelessWidget {
  final double maxWidth;
  final String? pathImage;
  const BackgroundMain({
    Key? key,
    required this.maxWidth,
    this.pathImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: MyConstant.light),
      child: Column(
        children: [
          SizedBox(
            height: maxWidth * 0.1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: maxWidth * 0.5,
                child:  ShowImage(path: pathImage,),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
