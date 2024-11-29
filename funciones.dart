void funciones() {
  int factorial(int n) {
    int respuesta = 1;
    for (int i = 1; i <= n; i++) {
      respuesta *= i;
    }
    return respuesta;
  }
}
