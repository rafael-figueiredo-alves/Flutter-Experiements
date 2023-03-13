import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MeuApp'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(5.0, 5.0, 20.0, 5.0),
            child: IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Este é uma mensagem ao adicionar item')));
              },
              icon: const Icon(Icons.add),
              tooltip: 'Adicionar Item',
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5.0, 5.0, 20.0, 5.0),
            child: IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Este é uma mensagem ao apagar item')));
              },
              icon: const Icon(Icons.remove),
              tooltip: 'Remover item',
            ),
          )
        ],
      ),
      body: const Center(
        child: Text('Olá Mundo!'),
      ),
    );
  }
}
