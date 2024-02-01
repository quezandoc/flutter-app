import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CursoPage extends StatefulWidget {
  const CursoPage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<CursoPage> createState() => _CursoPageState();
}

class _CursoPageState extends State<CursoPage> {
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildButton(1),
                buildButton(2),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildButton(3),
                buildButton(4),
              ],
            ),
          ],
        ),
      ),
        floatingActionButton: FloatingActionButton(
         onPressed: () => context.go("/tipoCertificado"),
         tooltip: 'go back',
         child: const Icon(Icons.arrow_back),
       ),
    );
  }

  Widget buildButton(int number) {
    return ElevatedButton(
      onPressed: () {
        // Acción al presionar el botón
        print('Presionaste el botón $number');
      },
      child: Text(number.toString()),
    );
  }
}