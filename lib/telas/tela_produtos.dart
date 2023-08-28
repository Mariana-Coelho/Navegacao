import 'package:flutter/material.dart';
import 'package:navegacao/models/categorias.dart';

class TelaProdutos extends StatelessWidget {
 
  // Exemplo de lista de pratos relacionados à categoria
  List<Prato> pratosDaCategoria = [
    Prato("Lasanha", "Uma deliciosa lasanha de carne com molho de tomate e queijo derretido.", "lasanha.jpg"),
    Prato("Strogonoff", "Strogonoff de frango com molho cremoso e arroz branco.", "strogonoff.jpg"),
    Prato("Batata frita", "Batatas fritas crocantes e douradas, perfeitas para petiscar.", "batata_frita.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    final categoria = ModalRoute.of(context)?.settings.arguments as Categoria;




    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Produtos"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("A categoria escolhida foi ${categoria.titulo}", style: TextStyle(fontSize: 18)),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: pratosDaCategoria.length,
              itemBuilder: (ctx, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Card(
                    child: ListTile(
                      title: Text(pratosDaCategoria[index].nome),
                      subtitle: Text(pratosDaCategoria[index].descricao),
                      leading: Image.asset(
                        pratosDaCategoria[index].caminhoImagem,
                        width: 70, // ajuste o tamanho da imagem conforme necessário
                        height: 70,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// Modelo de Prato (substitua pelas suas classes/modelos reais)
class Prato {
  final String nome;
  final String descricao;
  final String caminhoImagem;

  Prato(this.nome, this.descricao, this.caminhoImagem);
}
