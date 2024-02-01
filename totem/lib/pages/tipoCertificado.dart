import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TipoCertificadoPage extends StatefulWidget {
  const TipoCertificadoPage({super.key, required this.title});

  final String title;

  @override
  State<TipoCertificadoPage> createState() => _TipoCertificadoPageState();
}

class _TipoCertificadoPageState extends State<TipoCertificadoPage> {
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Acción al presionar el botón "Certificados cursos pasados"
                context.go("/curso");
              },
              child: Text('Certificados cursos pasados'),
            ),
            SizedBox(height: 16), // Espacio entre los botones
            ElevatedButton(
              onPressed: () {
                // Acción al presionar el botón "Certificado alumno regular"
                print('Mostrar certificado de alumno regular');
              },
              child: Text('Certificado alumno regular'),
            ),
          ],

        ),

      ),
      floatingActionButton: FloatingActionButton(
         onPressed: () => context.go("/"),
         tooltip: 'go back',
         child: const Icon(Icons.arrow_back),
       ),
    );
  }
}

// class _TipoCertificadoPageState extends State<TipoCertificadoPage> {
//   int _counter = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'El boton flotanteb te llevará a atras',
//             ),

//           ],
//         ),
//       ),
//        // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
