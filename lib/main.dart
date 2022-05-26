import 'package:atividade1/view/home_view.dart';
import 'package:atividade1/view/media_aritmetica_view.dart';
import 'package:atividade1/view/ponderada_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Atividade.',
    theme: ThemeData(
      primarySwatch: Colors.deepPurple,
    ),
    //home: HomeView(),

    // Rota Inicial:

    initialRoute: '/',

    // Rotas do projeto:

    routes: {
      '/': (context) => HomeView(),
      '/media_aritmetica_view': (context) => MediaAritmetica(),
      '/ponderada_view': (context) => Ponderada(),
    },
  ));
}
