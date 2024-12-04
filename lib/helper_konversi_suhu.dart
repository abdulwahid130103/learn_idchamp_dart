double getKonversiSuhuCelcius(double value) {
  var celsius = (value - 32) * 5 / 9;
  return celsius;
}

double getKonversiSuhuReamur(double value) {
  var reamur = (value - 32) * 4 / 9;
  return reamur;
}

double getKonversiSuhuKelvin(double value) {
  var kelvin = ((value - 32) * (5 / 9)) + 273;
  return kelvin;
}
