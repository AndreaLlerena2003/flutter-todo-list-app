import 'package:flutter/material.dart';

class SearchBarAndrea extends StatelessWidget {
  // ignore: use_super_parameters
  //declares two optional named parameters
  //constructor de la clase
  const SearchBarAndrea({super.key});
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
          border: InputBorder.none,
          hintText: 'Search Tasks',
          hintStyle: TextStyle(color: Colors.grey)
        ),
      ),
    );
  }
}


//La propiedad prefixIconConstraints te permite controlar el tamaño y la posición del ícono de prefijo dentro del campo de texto. Esto es útil para asegurarte de que el ícono se ajuste adecuadamente dentro del campo de texto y tenga el espaciado y tamaño deseados. Sin estas restricciones, el tamaño del ícono de prefijo podría ser determinado automáticamente por el sistema, lo que podría no coincidir con el diseño deseado.
//En resumen, BoxConstraints se utiliza aquí para asegurarse de que el ícono de búsqueda tenga un tamaño y espaciado específicos dentro del TextField.
//