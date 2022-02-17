// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ungtiktok/utility/my_constant.dart';

class ShowForm extends StatelessWidget {
  final String hint;
  final IconData iconData;
  final TextInputType? textInputType;
  final Function(String) changedFunc;
  final bool? obscure ;
  const ShowForm({
    Key? key,
    required this.hint,
    required this.iconData,
    this.textInputType,
    required this.changedFunc,
    this.obscure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: const EdgeInsets.only(top: 16),
      child: TextFormField(obscureText: obscure ?? false,
        onChanged: changedFunc,
        keyboardType: textInputType ?? TextInputType.text,
        style: MyConstant().h3Style(),
        decoration: InputDecoration(
          filled: true,
          prefixIcon: Icon(
            iconData,
            color: MyConstant.dark,
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 4),
          hintText: hint,
          hintStyle: MyConstant().h3Style(),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: MyConstant.dark)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: MyConstant.light)),
        ),
      ),
    );
  }
}
