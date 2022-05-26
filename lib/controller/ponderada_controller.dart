class PonderadaController {
  //Variaveis

  double textEntrada1 = 0;

  double textEntrada2 = 0;

  double textEntrada3 = 0;

  double textEntrada4 = 0;

  double textEntradaPeso1 = 0;

  double textEntradaPeso2 = 0;

  double textEntradaPeso3 = 0;

  double textEntradaPeso4 = 0;

  String calcular() {
    return ((textEntradaPeso1 * textEntrada1 +
                textEntradaPeso2 * textEntrada2 +
                textEntradaPeso3 * textEntrada3 +
                textEntradaPeso4 * textEntrada4) /
            (textEntradaPeso1 +
                textEntradaPeso2 +
                textEntradaPeso3 +
                textEntradaPeso4))
        .toString();
  }
}
