import 'package:flutter/material.dart';

class SubTittle extends StatelessWidget {
  const SubTittle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10), // Añade margen solo en los lados izquierdo y derecho
      alignment: Alignment.centerLeft,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Thuesday',
              style: TextStyle(
                color: Colors.purple, // Color para la palabra "Thuesday"
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: 'Serif',
              ),
            ),
            TextSpan(
              text: ' Frebrary 15',
              style: TextStyle(
                color: Colors.grey[700], // Color para el resto del texto
                fontSize: 15,
                fontWeight: FontWeight.w500,
                fontFamily: 'Serif',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
