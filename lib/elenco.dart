import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ElencoPage extends StatefulWidget {
  const ElencoPage({super.key});

  @override
  State<ElencoPage> createState() => _ElencoPageState();
}

class _ElencoPageState extends State<ElencoPage> {
  List elenco = [];

  @override
  void initState() {
    super.initState();
    carregarJson();
  }

  Future<void> carregarJson() async {
    String dados =
        await rootBundle.loadString('assets/elenco.json');

    setState(() {
      elenco = json.decode(dados);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Elenco"),
        backgroundColor: const Color(0xFF153b6d),
        foregroundColor: Colors.white,
      ),
      backgroundColor: const Color(0xFF0CC0DF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'img/telaElenco.jpg',
              ),
            ),

            const SizedBox(height: 20),

            ...elenco.map((ator) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF153b6d),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius:
                            BorderRadius.circular(10),
                        child: Image.asset(
                          ator["imagem"],
                          width: 100,
                          height: 130,
                          fit: BoxFit.cover,
                        ),
                      ),

                      const SizedBox(width: 12),

                      Expanded(
                        child: Text(
                          "Personagem: ${ator["nome"]}\n\n"
                          "Ator: ${ator["ator"]}\n\n"
                          "Filmes: ${ator["filmes"]}\n\n"
                          "Nascimento: ${ator["nascimento"]}",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            height: 1.4,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}