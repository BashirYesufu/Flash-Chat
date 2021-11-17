import 'package:flutter/material.dart';

class PaddedColorButton extends StatelessWidget {
  const PaddedColorButton({
    Key? key,
    required this.onPressed,
    required this.color,
    required this.textChild,
  }) : super(key: key);

  final Function() onPressed;
  final Color color;
  final String textChild;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            textChild,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
