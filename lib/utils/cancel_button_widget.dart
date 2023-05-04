import 'package:flutter/material.dart';

class CancelButtonWidget extends StatelessWidget {
  const CancelButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Container(
        foregroundDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.greenAccent.shade200],
          ),
          backgroundBlendMode: BlendMode.screen,
        ),
        child: const Icon(Icons.cancel),
      ),
      iconSize: 32,
      color: Colors.black,
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }
}
