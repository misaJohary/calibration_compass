import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CalibrateSuccess extends StatelessWidget {
  const CalibrateSuccess({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        'assets/lotties/success.json',
        width: 130,
        // fit: BoxFit.fitWidth,
      ),
    );
  }
}
