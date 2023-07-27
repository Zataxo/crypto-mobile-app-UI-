import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  const Indicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      decoration: BoxDecoration(
        color: const Color(0xff012500),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: const [
          Icon(
            Icons.arrow_drop_up_outlined,
            color: Color(0xff04DC00),
          ),
          Text(
            "10.45 %",
            style: TextStyle(color: Color(0xffFFFFFF)),
          )
        ],
      ),
    );
  }
}
