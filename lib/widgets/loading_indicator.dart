import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class LoadingWidget extends StatefulWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  State<LoadingWidget> createState() => _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        SizedBox(
          height: 80,
          width: 60,
          child: LoadingIndicator(
            indicatorType: Indicator.ballGridBeat,

            /// Required, The loading type of the widget
            colors: [Colors.white, Color(0xff4B70FF)],

            /// Optional, The color collections
            strokeWidth: 2,

            /// Optional, The stroke of the line, only applicable to widget which contains line
            backgroundColor: Colors.transparent,

            /// Optional, Background of the widget
            // pathBackgroundColor: Colors.black

            /// Optional, the stroke backgroundColor
          ),
        ),
        Text(
          "Transfering Funds...",
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
