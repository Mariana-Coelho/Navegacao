import 'package:flutter/material.dart';
import 'package:navegacao/models/categorias.dart';
import 'package:navegacao/telas/tela_produtos.dart';
import 'package:navegacao/utils/rotas.dart';

class ItemCategoria extends StatelessWidget{
  final Categoria categoria;
  ItemCategoria(this.categoria); 

   void selecionarCategoria(BuildContext context){
//Navigator.of(context).push(
 // MaterialPageRoute(builder: (_){
   // return TelaProdutos(categoria);
 // })
//);
Navigator.of(context).pushNamed(Rotas.PRODUTOS,arguments:categoria);
    }

  @override 
  Widget build(BuildContext context){
    return InkWell(
      onTap: () => selecionarCategoria(context),
      child: Container(
        child: Text(categoria.titulo),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              categoria.color.withOpacity(0.5),
              categoria.color
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          )
        )
      ),
    );
  }
}