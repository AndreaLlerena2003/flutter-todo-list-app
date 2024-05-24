import 'package:flutter/material.dart';

class CardTodo extends StatelessWidget {
  final String text;
  const CardTodo({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10), // Añade margen alrededor de la tarjeta
      child: Padding(
        padding: const EdgeInsets.all(15.0), // Añade padding dentro de la tarjeta
        child: Row(
          children: [
            Icon(Icons.check_box,color: Colors.purple),
            SizedBox(width: 10),
             SizedBox(width: 10),
            Expanded(
              child: Text(
                text,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), // Ajusta el estilo del texto
              ),
            ),
            IconButton(onPressed: (){
              print("Icono presionado");
            }, icon: Icon(Icons.delete),color: Colors.purple)
          ],
        ),
      ),
    );
  }
}

//expanded para que el text empuje al tacho al borde del container