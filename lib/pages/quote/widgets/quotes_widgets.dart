import 'package:flutter/material.dart';

class QuotesWidgets extends StatelessWidget {
  final String quote;
  const QuotesWidgets({super.key, required this.quote});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 20,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Center(child: Text(quote)),
      ),
    );
  }
}
