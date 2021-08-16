// @dart=2.9

import 'package:controle_vacina/component/cria_textfield.dart';
import 'package:flutter/material.dart';

class BuscaPessoa extends StatefulWidget {

  @override
  _BuscaPessoaState createState() => _BuscaPessoaState();
}

class _BuscaPessoaState extends State<BuscaPessoa> {

  TextEditingController _buscaCpfController = TextEditingController();
  TextEditingController _buscaNomeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Busca Dados de Aplicação"),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(16),
                child: criaTextField("CPF", _buscaCpfController, TextInputType.text),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: criaTextField("Nome", _buscaNomeController, TextInputType.text),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton.icon(
                  onPressed: () {
                    //_busca(context);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    onPrimary: Colors.red,
                  ),
                  label: Text(
                    'Buscar',
                    style: TextStyle(color: Colors.white),
                  ),
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}