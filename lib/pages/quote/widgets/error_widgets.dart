import 'package:flutter/material.dart';

class ErrorWidgets extends StatelessWidget {
  final String msg;
  const ErrorWidgets({super.key, required this.msg});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.error, color: Colors.red, size: 15),
        SizedBox(height: 20, child: Text(msg)),
      ],
    );
  }
}
