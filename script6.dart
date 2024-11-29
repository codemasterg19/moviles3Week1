import 'dart:io';

void main() {
  String opcion;
  List<int> numeros = [3, 7, 21, 9, 3, 6, 2, 45, 32, 6, 226];
  do {
    print(" ");
    print("******************************");
    print("Menu de Opciones");
    print(
        "a. Ejercicio a\nb. Ejercicio b\nc. Ejercicio c\nd. Ejercicio d\ne. Ejercicio e\nf. Ejercicio f \n0. Salir");
    print("Seleccione una opcion: ");
    opcion = stdin.readLineSync()!;
    switch (opcion) {
      case "a":
        print("Ejercicio a Números pares");
        print("Los numeros pares son: ${pares(numeros)}");
        print(" ");
        break;
      case "b":
        print("Ejercicio b Buscar elemento");
        print("Ingrese el número a buscar: ");
        int num = int.parse(stdin.readLineSync()!);
        print("${buscar(num, numeros)}");
        print(" ");
        break;
      case "c":
        print("Ejercicio c Indices");
        print("Ingrese el número a buscar: ");
        int num = int.parse(stdin.readLineSync()!);
        print("${buscarIndices(num, numeros)}");
        print(" ");
        break;
      case "d":
        print("Ejercicio d Data");
        print(" ");
        List<dynamic> data = [
          {"ci": "1725487950", "nombre": "Pedro Vera", "edad": 345},
          {"ci": "1741875690", "nombre": "Paul Cruz", "edad": 25},
          {"ci": "1714875950", "nombre": "Jose Perez", "edad": 18}
        ];
        print("${data[1]['edad']}");
        print("*********************************");
        for (int i = 0; i < data.length; i++) {
          if (data[i]['edad'] > 30) {
            print("${data[i]['nombre']}");
          }
        }

        print("********************************");
        for (var usuario in data) {
          print("${usuario['nombre']}");
        }
        print(" ");

      case "e":
        print("Ejercicio e Gastos Mensuales");
        print(" ");

        List<dynamic> gastos = [
          {"categoria": "alimento", "gasto": "100"},
          {"categoria": "estudio", "gasto": "3000"},
          {"categoria": "diversion", "gasto": "150"},
          {"categoria": "alimento", "gasto": "120"},
          {"categoria": "estudio", "gasto": "750"},
          {"categoria": "diversion", "gasto": "12080"},
          {"categoria": "alimento", "gasto": "3500"},
          {"categoria": "estudio", "gasto": "8020"}
        ];

        /* valor maximo double valmax = 0;

        for (var gasto in gastos) {
          double gastoVal = double.parse(gasto['gasto']);
          valmax = gastoVal > valmax ? gastoVal : valmax;
        }

        print("el mayor gasto es: $valmax ");*/

        int valAli = 0;
        int valEst = 0;
        int valDiv = 0;

        for (var gasto in gastos) {
          if (gasto['categoria'] == "alimento") {
            valAli += int.parse(gasto['gasto']);
          } else if (gasto['categoria'] == "estudio") {
            valEst += int.parse(gasto['gasto']);
          } else if (gasto['categoria'] == "diversion") {
            valDiv += int.parse(gasto['gasto']);
          }
        }

        String categoriaMax = "alimento";
        int valMax = valAli;

        if (valEst > valMax) {
          valMax = valEst;
          categoriaMax = "estudio";
        }
        if (valDiv > valMax) {
          valMax = valDiv;
          categoriaMax = "diversion";
        }

        print("alimento: $valAli");
        print("estudio: $valEst");
        print("diversion: $valDiv");
        print("El mayor gasto es: $valMax de la categoria $categoriaMax");

      case "0":
        print("Salir");
        break;
      default:
        print("Opcion no valida");
    }
  } while (opcion != "0");
}

List<int> pares(List numeros) {
  List<int> numPares = [];

  for (var numeros in numeros) {
    if (numeros % 2 == 0) {
      numPares.add(numeros);
    }
  }

  return numPares;
}

bool buscar(numero, List arreglo) {
  bool encontrado = false;

  for (var elemento in arreglo) {
    if (elemento == numero) {
      encontrado = true;

      break;
    }
  }

  return encontrado;
}

List buscarIndices(int numero, List arreglo) {
  List<int> indices = [];
  int cont = 0;

  for (var elemento in arreglo) {
    if (elemento == numero) {
      indices.add(cont);
    }
    cont++;
  }

  return indices;
}
