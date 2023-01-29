import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoreinicarQuesrionario;

  Resultado(this.pontuacao, this.quandoreinicarQuesrionario);

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns';
    } else if (pontuacao < 12) {
      return 'você é bom';
    } else if (pontuacao < 16) {
      return 'impressionante!';
    } else {
      return 'Nivel maximo';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(color: Colors.white),
          ),
          onPressed: quandoreinicarQuesrionario,
          child: const Text('Reiniciar ?'),
        ),
      ],
    );
  }
}
