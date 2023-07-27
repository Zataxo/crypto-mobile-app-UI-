import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton(
      {Key? key, required this.buttonName, this.icon, this.onPressed})
      : super(key: key);

  final Widget? icon;
  final String buttonName;
  final Function()? onPressed;
  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: const EdgeInsets.all(4.0),
        decoration: BoxDecoration(
            color: const Color(0xff00F4C8),
            borderRadius: BorderRadius.circular(12)),
        child: TextButton(
          onPressed: widget.onPressed,
          child: widget.icon == null
              ? Center(
                  child: Text(
                    widget.buttonName,
                    style: const TextStyle(color: Color(0xff000000)),
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.buttonName,
                      style: const TextStyle(color: Color(0xff000000)),
                    ),
                    widget.icon!
                  ],
                ),
        ),
      ),
    );
  }
}
