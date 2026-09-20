import 'package:flutter/material.dart';

class EnredoPage extends StatelessWidget {
  const EnredoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final String tituloRecebido =
        ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text(tituloRecebido),
        backgroundColor: Color(0xFF153b6d),
        foregroundColor: Colors.white,
        elevation: 1,
      ),
      backgroundColor: const Color(0xFF0CC0DF),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              'img/telaEnredo.jpg',
              fit: BoxFit.contain,
            ),
          ),
            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF153b6d),
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.all(12.0),
                child: const Text(
                  "Bastian Balthazar Bux é um garoto que encontra um livro misterioso chamado A História Sem Fim em uma livraria. Para fugir dos problemas que enfrenta, ele começa a ler o livro escondido no sótão da escola.\n\n"
                  "A história do livro apresenta um mundo fantástico de Fantasia, que está sendo destruído por uma força conhecida como 'Nada'.\n\n"
                  "Atreyu é um jovem guerreiro que recebe a missão de encontrar uma forma de salvar Fantasia e a Imperatriz Criança. Durante sua jornada, ele encontra diversas criaturas e enfrenta perigos enquanto tenta descobrir como impedir o avanço do Nada.\n\n"
                  "Enquanto Bastian continua lendo, percebe que a história do livro parece estar relacionada diretamente com ele. No final, ele descobre que sua própria imaginação é essencial para salvar Fantasia.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    height: 1.4,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}