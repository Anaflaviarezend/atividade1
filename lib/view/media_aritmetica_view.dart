import 'package:atividade1/controller/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:smart_alert_dialog/models/alert_dialog_text.dart';
import 'package:smart_alert_dialog/smart_alert_dialog.dart';

class MediaAritmetica extends StatefulWidget {
  const MediaAritmetica({Key? key}) : super(key: key);

  @override
  _MediaAritmeticaState createState() => _MediaAritmeticaState();
}

class _MediaAritmeticaState extends State<MediaAritmetica> {
  MainController controller = MainController();
  @override
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

                      // Campo de entrada das notas:

                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Primeiro Valor:',
                        ),
                        onChanged: (value) {
                          controller.textEntrada =
                              double.tryParse(value) ?? 0.0;
                        },
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Segundo Valor:',
                        ),
                        onChanged: (value) {
                          controller.textEntradaSegunda =
                              double.tryParse(value) ?? 0.0;
                        },
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Terceiro Valor:',
                        ),
                        onChanged: (value) {
                          controller.textEntradaTerceiro =
                              double.tryParse(value) ?? 0.0;
                        },
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Quarto Valor:',
                        ),
                        onChanged: (value) {
                          controller.textEntradaQuarto =
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
                                        title: "Média Aritmética",
                                        text: AlertDialogText(),
                                        content:
                                            "Aluno Aprovado! Sua média é: ${controller.calcular()}",
                                        onConfirmPress: () =>
                                            print("do something on confirm"),
                                        onCancelPress: () =>
                                            print("do something on cancel"),
                                      ));
                            } else {
                              showDialog(
                                  context: context,
                                  builder: (_) => SmartAlertDialog(
                                        title: "Média Aritmética",
                                        text: AlertDialogText(),
                                        content:
                                            "Aluno Reprovado! Sua média é: ${controller.calcular()}",
                                        onConfirmPress: () =>
                                            print("do something on confirm"),
                                        onCancelPress: () =>
                                            print("do something on cancel"),
                                      ));
                            }
                          },
                        ),
                      ),
                    ])))));
  }
}
