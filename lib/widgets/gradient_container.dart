import 'package:crypto_wallet/model/currency_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GradientContainer extends StatefulWidget {
  const GradientContainer({
    Key? key,
    required this.model,
  }) : super(key: key);
  final Curreny model;

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.2,
      width: size.width * 0.42,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          gradient: LinearGradient(
              colors: [
                // const Color(0xffFFFFFF).withOpacity(0.4),
                widget.model.coinColor,
                const Color(0xffFFFFFF).withOpacity(0.5)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              tileMode: TileMode.decal)),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/icons/${widget.model.logo}.svg",
                  height: 30,
                  width: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.model.title,
                        style: const TextStyle(color: Color(0xffFFFFFF)),
                      ),
                      Text(
                        widget.model.shortCut,
                        style: const TextStyle(color: Colors.white24),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: SvgPicture.asset(
              "assets/icons/${widget.model.lineSource}.svg",
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.model.value,
                  style: const TextStyle(color: Color(0xffFFFFFF)),
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_drop_up,
                  color: Color(0Xff04DC00),
                ),
                Text(
                  widget.model.increment,
                  style: const TextStyle(color: Color(0Xff04DC00)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
