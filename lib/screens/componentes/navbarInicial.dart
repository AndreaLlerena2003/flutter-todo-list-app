import 'package:flutter/material.dart';

class NavBar extends StatelessWidget implements PreferredSizeWidget {
  const NavBar({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.grey[100],
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            color: Colors.black,
            size: 30,
          ),
          Container(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/images/avatar.webp'),
            ),
          ) // Puedes personalizar este texto
        ],
      ),
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

}

//ClipRRect --> me recorta la imagen como rectangulo 

// mainAxisAlignment: MainAxisAlignment.spaceBetween-->  widgets hijos se colocan con el espacio distribuido equitativamente entre ellos. No hay espacio antes del primer hijo ni después del último hijo. Esto significa que los hijos estarán distribuidos uniformemente, con el mismo espacio entre cada par de hijos, pero los extremos estarán pegados a los bordes del contenedor.