import 'package:atividade1/view/media_aritmetica_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  get colum => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App de Calcular Média."),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(children: [
              Image.asset(
                'assets/images/calculator.png',
                width: 200,
                height: 200,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: Text(
                    'Aplicativo para ajudar a calcular Média Aritmética e Média Aritmética Ponderada.',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: ElevatedButton(
                  child: Text('Média Aritmética'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/media_aritmetica_view');
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: ElevatedButton(
                  child: Text('Média Aritmética Ponderada'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/ponderada_view');
                  },
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
