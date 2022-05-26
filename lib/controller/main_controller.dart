class MainController {
  //Variaveis

  double textEntrada = 0;
  double textEntradaSegunda = 0;
  double textEntradaTerceiro = 0;
  double textEntradaQuarto = 0;

  String calcular() {
    return ((textEntrada +
                textEntradaSegunda +
                textEntradaTerceiro +
                textEntradaQuarto) /
            4)
        .toString();
  }
}
