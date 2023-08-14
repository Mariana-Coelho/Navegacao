import 'package:flutter/material.dart';
import 'package:navegacao/telas/Tela_Categorias.dart';
void main() {
  runApp(MeuCardapio());
}
class MeuCardapio extends StatelessWidget {
  const MeuCardapio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cardapio",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: TelaCategoria(),
    );
  }
}