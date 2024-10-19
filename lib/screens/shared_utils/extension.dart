import 'package:flutter/material.dart';

extension ASSET on String {
  String toPNG() {
    return 'assets/images/png/$this.png';
  }

  String toJPG() {
    return 'assets/images/jpg/$this.jpg';
  }
}

extension SPACER on num {
  SizedBox get vSpace {
    return SizedBox(
      height: toDouble(),
    );
  }

  SizedBox get hSpace {
    return SizedBox(
      width: toDouble(),
    );
  }
}
