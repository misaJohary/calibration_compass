import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sensors_plus/sensors_plus.dart';

import 'widgets/calibration_directive.dart';
import 'widgets/calibration_success.dart';
import 'widgets/medium_calibrate.dart';

class CalibrationPage extends StatefulWidget {
  const CalibrationPage({super.key});

  @override
  State<CalibrationPage> createState() => _CalibrationPageState();
}

class _CalibrationPageState extends State<CalibrationPage> {
  bool isInit = true;
  bool isChecked = false;
  double posXInit = 0.0, posYInit = 0.0, posXEnd = 0.0, posYEnd = 0.0;
  bool isCalibrate = false;
  bool medium = false;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<AccelerometerEvent>(
      stream: SensorsPlatform.instance.accelerometerEvents,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          if (isInit) {
            posXInit = snapshot.data!.x;
            posYInit = snapshot.data!.y;
            isInit = false;
          }
          posXEnd = snapshot.data!.x;
          posYEnd = snapshot.data!.y;
          if (posXEnd >= posXInit + 18 || posYEnd >= posYInit + 18) {
            isCalibrate = true;
          } else if (posXEnd >= posXInit + 11 || posYEnd >= posYInit + 11) {
            medium = true;
          }
        }
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (!isCalibrate) const CalibrationDirective(),
            if (medium && !isCalibrate) const MediumCalibrate(),
            if (isCalibrate) const CalibrateSuccess(),
          ],
        );
      },
    );
  }
}
