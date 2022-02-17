// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ungtiktok/utility/my_constant.dart';
import 'package:ungtiktok/utility/my_dialog.dart';
import 'package:ungtiktok/widgets/background_main.dart';
import 'package:ungtiktok/widgets/show_button.dart';
import 'package:ungtiktok/widgets/show_form.dart';
import 'package:ungtiktok/widgets/show_text.dart';

class Authen extends StatefulWidget {
  const Authen({
    Key? key,
  }) : super(key: key);

  @override
  State<Authen> createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  String? email, password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constaint) {
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(FocusScopeNode()),
          behavior: HitTestBehavior.opaque,
          child: Stack(
            children: [
              BackgroundMain(
                maxWidth: constaint.maxWidth,
              ),
              Positioned(
                top: constaint.maxWidth * 0.7,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  height: constaint.maxHeight,
                  width: constaint.maxWidth,
                  decoration: MyConstant().whiteBox(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ShowText(
                        label: 'Sign In',
                        textStyle: MyConstant().h2Style(),
                      ),
                      ShowForm(
                        hint: 'Email :',
                        iconData: Icons.email_outlined,
                        textInputType: TextInputType.emailAddress,
                        changedFunc: (String string) => email = string.trim(),
                      ),
                      ShowForm(
                        hint: 'Password :',
                        iconData: Icons.lock_outline,
                        obscure: true,
                        changedFunc: (String string) =>
                            password = string.trim(),
                      ),
                      newSignIn(context),
                      newCreateAccount(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  ShowButton newSignIn(BuildContext context) {
    return ShowButton(
      label: 'Sign In',
      pressedFunc: () async {
        if ((email?.isEmpty ?? true) || (password?.isEmpty ?? true)) {
          MyDialog(context: context).actionDialog(
              title: 'Have Spave ?', subTitle: 'Please Fill Every Blank');
        } else {
          await FirebaseAuth.instance
              .signInWithEmailAndPassword(email: email!, password: password!)
              .then((value) => Navigator.pushNamedAndRemoveUntil(
                  context, MyConstant.routeMyService, (route) => false))
              .catchError((onError) {
            MyDialog(context: context)
                .actionDialog(title: onError.code, subTitle: onError.message);
          });
        }
      },
    );
  }

  Row newCreateAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const ShowText(label: 'Non Account ? '),
        TextButton(
            onPressed: () {},
            child: ShowText(
              label: 'Create New Account',
              textStyle: MyConstant().h3ButtonStyle(),
            )),
      ],
    );
  }
}
