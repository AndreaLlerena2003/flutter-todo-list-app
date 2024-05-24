import 'package:flutter/material.dart';

class TittleAndrea extends StatelessWidget {
  const TittleAndrea({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     margin: EdgeInsets.symmetric(horizontal: 10), // Añade margen solo en los lados izquierdo y derecho
      alignment: Alignment.centerLeft,
      child: Text(
        'Hello, Andrea!',
        style: TextStyle(
          color: Colors.grey[700],
          fontSize: 18,
          fontWeight: FontWeight.w500,
          fontFamily: 'Serif'
        ),
      ),
    );
  }
}
