import 'package:crypto_wallet/view/login_screen_view.dart';
import 'package:crypto_wallet/view/registration_screen_view.dart';
import 'package:flutter/material.dart';

class MainScreenView extends StatefulWidget {
  const MainScreenView({Key? key}) : super(key: key);

  @override
  State<MainScreenView> createState() => _MainScreenViewState();
}

class _MainScreenViewState extends State<MainScreenView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
            length: 2,
            child: Scaffold(
              backgroundColor: const Color(0xff081534).withOpacity(0.87),
              body: Column(
                children: const [
                  TabBar(tabs: [
                    Tab(
                      child: Text("Sign-Up"),
                    ),
                    Tab(
                      child: Text("Login"),
                    )
                  ]),
                  Expanded(
                    child: TabBarView(children: [
                      RegisrationScreenView(),
                      LoginScreenView(),
                    ]),
                  )
                ],
              ),
            )));
  }
}
