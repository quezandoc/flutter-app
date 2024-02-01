import 'package:go_router/go_router.dart';
import '../pages/tipoCertificado.dart';
import '../pages/curso.dart';
import '../pages/home.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => MyHomePage(title: 'Totem de certificados'),
    ),
    GoRoute(
      path: '/tipoCertificado',
      builder: (context, state) => TipoCertificadoPage(title: 'Tipo de certificados'),
    ),
    GoRoute(
      path: '/curso',
      builder: (context, state) => CursoPage(title: 'Curso de certificado'),
    ),
  ],
);