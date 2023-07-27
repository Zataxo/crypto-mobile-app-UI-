import 'package:crypto_wallet/view/main_screen_view.dart';
import 'package:crypto_wallet/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class HomeScreenview extends StatefulWidget {
  const HomeScreenview({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreenview> createState() => _HomeScreenviewState();
}

class _HomeScreenviewState extends State<HomeScreenview> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xff081534).withOpacity(0.87),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            "assets/imgs/splash.png",
            height: size.height * 0.5,
            width: size.width * 1,
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              "Your Personal Crypto Wallet",
              style: TextStyle(color: Color(0xffFFFFFF), fontSize: 32),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              "Its Secured By Crypto Graphic Technics and Hash Alogarithm",
              style: TextStyle(
                  color: Color.fromARGB(255, 233, 225, 225), fontSize: 16),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          CustomButton(
            buttonName: "Get Started",
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MainScreenView(),
                  ));
            },
            icon: const Icon(
              Icons.keyboard_arrow_right_outlined,
              color: Colors.black,
            ),
          )
        ],
      ),
    ));
  }
}
