import 'package:crypto_wallet/widgets/custom_button.dart';
import 'package:crypto_wallet/widgets/custom_textform_field.dart';
import 'package:flutter/material.dart';

class RegisrationScreenView extends StatefulWidget {
  const RegisrationScreenView({
    Key? key,
  }) : super(key: key);

  @override
  State<RegisrationScreenView> createState() => _RegisrationScreenViewState();
}

class _RegisrationScreenViewState extends State<RegisrationScreenView> {
  final TextEditingController _userName = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _bio = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
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
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: CustomTextFormField(
              controller: _bio,
              title: "Bio",
              titleStyle:
                  const TextStyle(color: Color(0xffFFFFFF), fontSize: 12),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              "Create Password",
              style: TextStyle(color: Color(0xffFFFFFF)),
            ),
          ),
          const Text(
            "This password will unlock your private wallet only on this service",
            style: TextStyle(color: Color(0xffAFB4C0)),
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
          const Spacer(),
          CustomButton(
            buttonName: "Sign-Up",
            onPressed: () {
              // wait for the view model
            },
          )
        ],
      ),
    );
  }
}
