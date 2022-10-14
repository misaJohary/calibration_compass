import 'package:flutter/material.dart';

import 'calibration/calibration_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('calibration process')),
      body: const CalibrationPage(),
    );
  }
}
