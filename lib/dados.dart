import 'package:flutter/material.dart';

class DadosPage extends StatelessWidget {
  const DadosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dados Técnicos"),
        backgroundColor: const Color(0xFF153b6d),
        foregroundColor: Colors.white,
        elevation: 1,
      ),
      backgroundColor: const Color(0xFF0CC0DF),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'img/telaDados.jpg',
              ),
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF153b6d),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: const EdgeInsets.all(12.0),
                      child: const Text(
                        "Direção: Wolfgang Petersen\n\n"
                        "Ano de Lançamento: 05/10/1984\n\n"
                        "Nota: 7.3\n\n"
                        "Países de Origem: Alemanha Ocidental e Estados Unidos\n\n"
                        "Duração: 1 hora e 42 minutos\n\n"
                        "Orçamento Estimado: US\$ 25 a 27 milhões\n\n"
                        "Roteiro: Wolfgang Petersen e Robert Easton (baseado no livro de Michael Ende)\n\n"
                        "Elenco Principal: Noah Hathaway (Atreyu), Barret Oliver (Bastian), Tami Stronach (Imperatriz Criança) e Gerald McRaney (Senhor Koreander)",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          height: 1.4,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'img/Falkor.png',
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}