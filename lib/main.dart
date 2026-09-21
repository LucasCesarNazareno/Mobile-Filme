import 'package:flutter/material.dart';
import 'package:a_historia_sem_fim/elenco.dart';

import 'enredo.dart';
import 'dados.dart';
import 'curiosidades.dart';
import 'afins.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "A Historia Sem Fim",
      home: MainApp(),
    ),
  );
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  'img/fundoMenu.jpg',
                  fit: BoxFit.cover,
                ),
              ),

              Positioned(
                top: constraints.maxHeight * 0.07,
                left: 0,
                right: 0,
                child: Center(
                  child: Image.asset(
                    'img/Título.png',
                    width: constraints.maxWidth * 0.8,
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              // ENREDO
              Positioned(
                top: constraints.maxHeight * 0.38,
                left: 0,
                right: 0,
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EnredoPage(),
                          settings: const RouteSettings(
                            arguments: 'Enredo',
                          ),
                        ),
                      );
                    },
                    child: Image.asset(
                      'img/enredo.jpg',
                      width: constraints.maxWidth * 0.4,
                      height: constraints.maxHeight * 0.075,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),

              // DADOS
              Positioned(
                top: constraints.maxHeight * 0.47,
                left: 0,
                right: 0,
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DadosPage(),
                          settings: const RouteSettings(
                            arguments: 'Dados',
                          ),
                        ),
                      );
                    },
                    child: Image.asset(
                      'img/dados.jpg',
                      width: constraints.maxWidth * 0.4,
                      height: constraints.maxHeight * 0.075,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),

              // ELENCO
              Positioned(
                top: constraints.maxHeight * 0.56,
                left: 0,
                right: 0,
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ElencoPage(),
                        ),
                      );
                    },
                    child: Image.asset(
                      'img/elenco.jpg',
                      width: constraints.maxWidth * 0.4,
                      height: constraints.maxHeight * 0.075,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),

              // CURIOSIDADES
              Positioned(
                top: constraints.maxHeight * 0.65,
                left: 0,
                right: 0,
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CuriosidadesPage(),
                          settings: const RouteSettings(
                            arguments: 'Curiosidades',
                          ),
                        ),
                      );
                    },
                    child: Image.asset(
                      'img/curiosidades.jpg',
                      width: constraints.maxWidth * 0.4,
                      height: constraints.maxHeight * 0.075,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),

              // AFINS
              Positioned(
                top: constraints.maxHeight * 0.74,
                left: 0,
                right: 0,
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AfinsPage(),
                          settings: const RouteSettings(
                            arguments: 'Afins',
                          ),
                        ),
                      );
                    },
                    child: Image.asset(
                      'img/afins.jpg',
                      width: constraints.maxWidth * 0.4,
                      height: constraints.maxHeight * 0.075,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}