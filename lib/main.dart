// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:ungtiktok/states/authen.dart';
import 'package:ungtiktok/states/my_service.dart';
import 'package:ungtiktok/utility/my_constant.dart';

Map<String, WidgetBuilder> map = {
  MyConstant.routeAuthen: (context) => const Authen(),
  MyConstant.routeMyService: (context) => const MyService(),
};

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) {
    FirebaseAuth.instance.authStateChanges().listen((event) {
      if (event == null) {
        runApp(MyApp(initialRoute: MyConstant.routeAuthen));
      } else {
        runApp(MyApp(initialRoute: MyConstant.routeMyService));
      }
    });
  });
}

class MyApp extends StatelessWidget {
  final String? initialRoute;
  const MyApp({
    Key? key,
    this.initialRoute,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: map,
      initialRoute: initialRoute,
    );
  }
}
