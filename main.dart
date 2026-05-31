import 'package:flutter/material.dart';

void main() {
  runApp(const KbcSorteiosApp());
}

class KbcSorteiosApp extends StatelessWidget {
  const KbcSorteiosApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'kbc-Sorteios',
      theme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('kbc-Sorteios'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'kbc-Sorteios',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Aplicativo completo de gerenciamento de campeonatos de futebol, controle de presença (desativado por padrão) e cronômetro com sirene de 8 segundos.',
            ),
          ],
        ),
      ),
    ); 
  }
}