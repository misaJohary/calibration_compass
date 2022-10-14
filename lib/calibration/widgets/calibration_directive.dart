import 'package:flutter/material.dart';

class CalibrationDirective extends StatelessWidget {
  const CalibrationDirective({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Center(
          child: Text(
            'Veuillez faire un mouvement de 8 avec votre téléphone pour le calibrer',
            textAlign: TextAlign.center,
          ),
        ),
        Image.asset('assets/gifs/calibration.gif'),
      ],
    );
  }
}
