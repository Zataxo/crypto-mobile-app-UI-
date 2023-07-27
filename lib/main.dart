import 'package:crypto_wallet/view/home_screen_view.dart';
import 'package:crypto_wallet/view_model/account_screen_view_model.dart';
import 'package:crypto_wallet/view_model/login_screen__view_model.dart';
import 'package:crypto_wallet/view_model/registration_screen_view_model.dart';
import 'package:crypto_wallet/utils/util_logic.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => RegistrationScreenViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => LoginScreenViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => AccountScreenViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => UtilLogic(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // title: 'Flutter Demo',
        theme: ThemeData.light(),
        home: const HomeScreenview(),
      ),
    );
  }
}
