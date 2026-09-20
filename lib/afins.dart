import 'package:flutter/material.dart';

class AfinsPage extends StatelessWidget {
  const AfinsPage({super.key});

  void mostrarLink(BuildContext context, String titulo, String link) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(titulo),
        content: SelectableText(link),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Fechar"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Afins"),
        backgroundColor: const Color(0xFF153b6d),
        foregroundColor: Colors.white,
        elevation: 1,
      ),
      backgroundColor: const Color(0xFF0CC0DF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 250,
              child: Image.asset(
                'img/telaAfins.jpg',
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 20),

            GestureDetector(
              onTap: () {
                mostrarLink(
                  context,
                  "Adoro Cinema",
                  "https://www.adorocinema.com/filmes/filme-27570/",
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'img/cinema.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            GestureDetector(
              onTap: () {
                mostrarLink(
                  context,
                  "Livro Amazon",
                  "https://www.amazon.com.br/Hist%C3%B3ria-sem-Fim-Michael-Ende/dp/8580631165",
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'img/livro.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            GestureDetector(
              onTap: () {
                mostrarLink(
                  context,
                  "Página Oficial",
                  "https://michaelende.de/film/die-unendliche-geschichte",
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'img/página.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            GestureDetector(
              onTap: () {
                mostrarLink(
                  context,
                  "IMDb",
                  "https://www.imdb.com/title/tt0088323/?utm_so",
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'img/nota.jpg',
                    fit: BoxFit.cover,
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