import 'package:flutter/material.dart';

void buttonMsg(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text(
        "There are no other screens on the design to navigate to.",
      ),
      duration: Duration(milliseconds: 500),
    ),
  );
}