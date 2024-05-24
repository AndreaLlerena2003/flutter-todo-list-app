import 'package:flutter/material.dart';
import 'package:myapp/screens/componentes/cardToDo.dart';
import 'package:myapp/screens/componentes/subtittle.dart';
import 'package:myapp/screens/componentes/tittle.dart';
import 'componentes/navbarInicial.dart';
import 'componentes/SearchBar.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBar(),
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
          MySearchBar(),
          SizedBox(height: 17),
          TittleAndrea(),
          SubTittle(),
          SizedBox(height: 17),CardTodo(text: 'Andrea')],
        ),
      ),
    );
  }
}