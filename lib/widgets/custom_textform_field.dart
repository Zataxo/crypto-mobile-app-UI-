import 'package:crypto_wallet/utils/util_logic.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {Key? key,
      required this.controller,
      required this.title,
      required this.titleStyle,
      this.isPassword})
      : super(key: key);
  final TextEditingController controller;
  final TextStyle titleStyle;
  final String title;
  final bool? isPassword;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Text(
            title,
            style: titleStyle,
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: const Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(5)),
          child: Consumer<UtilLogic>(
              builder: (context, utilLogicProvider, child) => TextFormField(
                    controller: controller,
                    obscureText: isPassword == true
                        ? utilLogicProvider.isPasswordObsecure
                        : false,
                    decoration: InputDecoration(
                        suffixIcon: isPassword != null && isPassword == true
                            ? IconButton(
                                onPressed: () {
                                  utilLogicProvider.changePasswordVisibilty();
                                },
                                icon: utilLogicProvider.isPasswordObsecure
                                    ? const Icon(Icons.visibility_off)
                                    : const Icon(Icons.visibility))
                            : null,
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 12.0)),
                  )),
        ),
      ],
    );
  }
}
