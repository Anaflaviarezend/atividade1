import 'package:flutter/material.dart';
import 'package:smart_alert_dialog/models/alert_dialog_text.dart';
import 'package:smart_alert_dialog/smart_alert_dialog.dart';

import '../controller/ponderada_controller.dart';

class Ponderada extends StatefulWidget {
  const Ponderada({Key? key}) : super(key: key);

  @override
  _PonderadaState createState() => _PonderadaState();
}

class _PonderadaState extends State<Ponderada> {
  @override
  PonderadaController controller = PonderadaController();
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('MediaAritmetica'),
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

                      // Container de espaçamento:

                      // Campo de entrada das notas e peso:

                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Nota 1:',
                        ),
                        onChanged: (value) {
                          controller.textEntrada1 =
                              double.tryParse(value) ?? 0.0;
                        },
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Nota 2:',
                        ),
                        onChanged: (value) {
                          controller.textEntrada2 =
                              double.tryParse(value) ?? 0.0;
                        },
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Nota 3',
                        ),
                        onChanged: (value) {
                          controller.textEntrada3 =
                              double.tryParse(value) ?? 0.0;
                        },
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Nota 4',
                        ),
                        onChanged: (value) {
                          controller.textEntrada4 =
                              double.tryParse(value) ?? 0.0;
                        },
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Peso 1',
                        ),
                        onChanged: (value) {
                          controller.textEntradaPeso1 =
                              double.tryParse(value) ?? 0.0;
                        },
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Peso 2',
                        ),
                        onChanged: (value) {
                          controller.textEntradaPeso2 =
                              double.tryParse(value) ?? 0.0;
                        },
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Peso 3',
                        ),
                        onChanged: (value) {
                          controller.textEntradaPeso3 =
                              double.tryParse(value) ?? 0.0;
                        },
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Peso 4',
                        ),
                        onChanged: (value) {
                          controller.textEntradaPeso4 =
                              double.tryParse(value) ?? 0.0;
                        },
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: ElevatedButton(
                            child: Text('Calcular'),
                            onPressed: () {
                              if (double.parse(controller.calcular()) >= 6) {
                                showDialog(
                                    context: context,
                                    builder: (_) => SmartAlertDialog(
                                          title: "Média Ponderada",
                                          text: AlertDialogText(),
                                          content:
                                              "Aluno Aprovado! Sua média é: ${controller.calcular()}",
                                        ));
                              } else {
                                showDialog(
                                    context: context,
                                    builder: (_) => SmartAlertDialog(
                                          title: "Média Ponderada",
                                          text: AlertDialogText(),
                                          content:
                                              "Aluno Reprovado! Sua média é: ${controller.calcular()}",
                                        ));
                              }
                            }),
                      ),
                    ])))));
  }
}
