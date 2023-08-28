import 'package:flutter/material.dart';
import 'package:navegacao/telas/Tela_Categorias.dart';
import 'package:navegacao/telas/tela_produtos.dart';
import 'package:navegacao/utils/rotas.dart';
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
      //home: TelaCategoria(),
      routes: {
       Rotas.HOME: (ctx)=> TelaCategoria(),
       Rotas.PRODUTOS : (ctx)=> TelaProdutos(),
      }


    );
  }
}