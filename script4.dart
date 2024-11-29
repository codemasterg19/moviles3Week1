import 'dart:io';
import 'dart:math';

void main() {
  int opcion = 0;
  do {
    print("******************************");
    print("Menu de Opciones");
    print(
        "1. Ejercicio 1 \n2. Ejercicio 2 \n3. Ejercicio 3  \n4. Ejercicio 7 \n5. Ejercicio 8 \n6. Ejercicio 9 \n7. Ejercicio 10 \n8. Ejercicio 11 \n9. Ejercicio 12 \n10. Ejercicio 13");
    print(
        "11 Ejercicio extra 1 \n12 Ejercicio extra 2 \n13 Ejercicio extra 3 \n0. Salir");
    print("Seleccione una opcion: ");
    opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        //crear un programa que tome dos valores y  que despliegue una suma de los numeros dentro del arreglo
        //los números deben ser multiplos 5
        print("----------------------");
        print("-----Ejercicio 1------");
        print(" ");
        int suma = 0;

        print("Ingrese el número inicial: ");
        int num1 = int.parse(stdin.readLineSync()!);
        print("Ingrese el número final: ");
        int num2 = int.parse(stdin.readLineSync()!);
        print(" ");

        for (int i = num1; i <= num2; i++) {
          if (i % 5 == 0) {
            suma += i;
            print(i);
          }
        }
        print("La suma de los números multiplos de 5 es: $suma");
        print(" ");
      case 2:
        print("----------------------");
        print("-----Ejercicio 2------");
        print(" ");
        int salario = 0;
        print("Ingrese su edad: ");
        int edad = int.parse(stdin.readLineSync()!);
        print("Ingrese su profesion: ");
        String profesion = stdin.readLineSync()!;
        if (edad < 25) {
          salario = 1000;
        } else if (edad >= 25 && edad <= 40) {
          salario = 1500;
        } else {
          salario = 2000;
        }
        print("salario por edad: $salario");

        if (profesion == "doctor") {
          salario += 500;
          print("bono es de 500");
        } else if (profesion == "ingeniero") {
          salario += 300;
          print("bono es de 300");
        } else {
          salario = salario;
        }

        print("Su salario total es: $salario");

        print(" ");
      case 3:
        print("----------------------");
        print("-----Ejercicio 3------");
        print(" ");
        print("Ingrese el número: ");
        int n = int.parse(stdin.readLineSync()!);
        print("El factorial de 5 es: ${factorial(n)}");
        print(" ");
      case 4:
        print("----------------------");
        print("-----Ejercicio 4------");
        print(" ");
        print("La suma de los cuadrados hasta el 50 es: ${sumaCuadrados()}");
        print(" ");
      case 5:
        print("----------------------");
        print("-----Ejercicio 5------");
        print(" ");
        print("La suma de la serie armonica es: ${sumaSerieArmonica()}");
        print(" ");
      case 10:
        print("----------------------");
        print("-----Ejercicio 10------");
        print(" ");
        print("Ingrese el número: ");
        int n = int.parse(stdin.readLineSync()!);
        print("La suma geomética es: ${sumaGeometrica(n)}");
        print(" ");
      case 13:
        print("----------------------");
        print("-----Ejercicio extra 3------");
        print(" Serie de fibonacci: ");
        print(" ");
        print("Ingrese el número: ");
        int n = int.parse(stdin.readLineSync()!);
        print("La serie Aurea es: ");
        sumaSerieFibonacci(n);

      case 0:
        print("----------------------");
        print("---FIN DEL PROGRAMA------");
        print(" ");
      default:
        print("----------------------");
        print("-----Opcion no valida------");
        print(" ");
    }
  } while (opcion != 0);
}

int factorial(int n) {
  int respuesta = 1;
  for (int i = 1; i <= n; i++) {
    respuesta *= i;
  }
  return respuesta;
}

int sumaCuadrados() {
  int suma = 0;
  for (int i = 1; i <= 50; i++) {
    suma = suma + pow(i, 2).toInt();
  }
  return suma;
}

double sumaSerieArmonica() {
  double suma = 1;
  for (int i = 2; i <= 100; i++) {
    suma = suma + 1 / i;
  }
  return suma;
}

void sumaSerieFibonacci(int n) {
  int a = 0;
  int b = 1;

  for (int i = 1; i <= n; i++) {
    int c = a + b;
    print(a);
    a = b;
    b = c;
  }
}

int sumaGeometrica(num) {
  int suma = 0;
  int r = 1;
  for (int i = 1; i <= num; i++) {
    suma = suma + r;
    r = r * 2;
  }
  return suma;
}
