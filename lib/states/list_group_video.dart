import 'package:flutter/material.dart';
import 'package:ungtiktok/utility/my_constant.dart';
import 'package:ungtiktok/widgets/show_text.dart';

class ListGroupVideo extends StatelessWidget {
  const ListGroupVideo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: ShowText(label: 'List Group Video and Add', textStyle: MyConstant().h2Style(),),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
    );
  }
}
