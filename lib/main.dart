import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

    /*
    Adicione um ícone para deixar Campeonato de futebol marcado como feito.
    Adicione um ícone de relógio para a atividade Festa da Joana.
    Adicione datas nas atividades: Estudar 16/08/2024, Campeonato 14/08/2024, Festa 23/08/2024.
    Adicione style em todos os textos. Use a cor do texto azul para atividades que ainda vão acontecer, texto preto para o que já aconteceu, e a cor verde para atividades que vão acontecer mas já estão marcadas como feitas.
    Ajuste a fonte de todos os textos para 'Quicksand'. Ajuste o tamanho da fonte da atividade para 26 e o tamanho da fonte da data para 22.
    Pesquise como alterar a cor do ícone, ajuste a cor dos ícones para a mesma cor do texto da atividade.
    Pesquise como marcar um texto com linethrough, adicione uma atividade que foi cancelada e use o estilo linethrough.
    */

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          centerTitle: true,
          title: const Text('Atividades'),
        ),
        body: const Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.check_box_outline_blank,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Estudar Flutter',
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 26,
                      color: Colors.blue),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '16/08/2024',
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 22,
                          color: Colors.blue),
                    ),
                  ),
                ),
              ], // children
            ),
            Row(
              children: [
                Icon(Icons.check_box),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Campeonato de futebol',
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 26,
                      color: Colors.black),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '14/08/2024',
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.schedule, color: Colors.green),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Festa da Joana',
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 26,
                      color: Colors.green),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '23/08/2024',
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 22,
                          color: Colors.green),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.disabled_by_default, color: Colors.red),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Festa de aniversário',
                  style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      fontFamily: 'Quicksand',
                      fontSize: 26,
                      color: Colors.red),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '17/08/2024',
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 22,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}