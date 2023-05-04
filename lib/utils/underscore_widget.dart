import 'package:flutter/material.dart';

class UnderscoreWidget extends StatelessWidget {
  const UnderscoreWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6,
      width: 66,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(
          colors: [Colors.blueAccent, Colors.greenAccent.shade200],
          begin: Alignment.topLeft,
          end: Alignment.topRight,
        ),
      ),
    );
  }
}
