import 'package:crypto_wallet/view/account_screen_view.dart';
import 'package:crypto_wallet/widgets/custom_button.dart';
import 'package:crypto_wallet/widgets/custom_textform_field.dart';
import 'package:flutter/material.dart';

class LoginScreenView extends StatefulWidget {
  const LoginScreenView({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginScreenView> createState() => _LoginScreenViewState();
}

class _LoginScreenViewState extends State<LoginScreenView> {
  final TextEditingController _userName = TextEditingController();
  final TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            "assets/imgs/coins.png",
            height: size.height * 0.25,
            width: size.width * 1,
          ),
          const Text(
            "Let us Dive Together..",
            style: TextStyle(color: Color(0xffAFB4C0)),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              "Weclome to Crypto Graphic World...",
              style: TextStyle(color: Color(0xffAFB4C0)),
            ),
          ),
          CustomTextFormField(
            controller: _userName,
            title: "User name",
            titleStyle: const TextStyle(color: Color(0xffFFFFFF), fontSize: 12),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
            child: CustomTextFormField(
              controller: _password,
              title: "Password",
              isPassword: true,
              titleStyle:
                  const TextStyle(color: Color(0xffFFFFFF), fontSize: 12),
            ),
          ),
          const Text(
            "Must be at least 8 characters",
            style: TextStyle(color: Color(0xffAFB4C0), fontSize: 12),
          ),

          //   ],
          // )
          const Spacer(),
          CustomButton(
            buttonName: "Login",
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AccountScreenView(),
                  ));
            },
          )
        ],
      ),
    );
  }
}
