import 'dart:io';

void main() {
  int opcion = 5;

  do {
    print("******************************");
    print("Menu de ejercicios");
    print("1. Ejercicio 1");
    print("2. Ejercicio 2");
    print("3. Ejercicio 3");
    print("91. Ejercicio extra 1");
    print("92. Ejercicio extra 2");
    print("93. Ejercicio extra 3");
    print("99. Salir");
    print("Seleccione una opcion: ");
    opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        print("----------------------");
        print("-----Ejercicio 1------");
        print(" ");
        double C;
        double F;
        print("Ingrese la temperatura en Celsius");
        C = double.parse(stdin.readLineSync()!);
        F = (C * 1.8) + 32;
        print("La temperatura en Fahrenheit es $F");
        print("La temperratura en grados Kelvin es ${C + 273.15}");

        print("Ingrese la temperatura en Fahrenheit");
        F = double.parse(stdin.readLineSync()!);
        C = (F - 32) / 1.8;
        print("La temperatura en Celsius es $C");
        print(" ");
        break;
      case 2:
        print("----------------------");
        print("-----Ejercicio 2------");
        print(" ");
        int max = 0;
        int min = 0;
        print("Ingrese el primer número");
        int num1 = int.parse(stdin.readLineSync()!);
        print("Ingrese el segundo numero");
        int num2 = int.parse(stdin.readLineSync()!);
        print("Ingrese el tercer numero");
        int num3 = int.parse(stdin.readLineSync()!);

        if (num1 >= num2 && num1 >= num3) {
          max = num1;
        } else if (num2 >= num1 && num2 >= num3) {
          max = num2;
        } else {
          max = num3;
        }
        print("El número mayor es $max");

        if (num1 <= num2 && num1 <= num3) {
          min = num1;
        } else if (num2 <= num1 && num2 <= num3) {
          min = num2;
        } else {
          min = num3;
        }
        print("El número menor es $min");
        print(" ");
        break;

      case 3:
        print("----------------------");
        print("-----Ejercicio 3------");
        print(" ");
        break;
      case 91:
        print("----------------------");
        print("----- Ejercio Extra 1------");
        print(" ");

        int i = 0;
        while (i < 12) {
          print("$i x 6 = ${i * 6}");
          i++;
        }

        print("**********************");
        for (int i = 0; i <= 12; i++) {
          print("$i x 6 = ${i * 6}");
        }

        break;
      case 92:
        print("----------------------");
        print("----- Ejercio Extra 2------");
        print(" Imprime Rango ");
        print("Ingrese numero inicial: ");
        int num1 = int.parse(stdin.readLineSync()!);
        print("Ingrese numero final: ");
        int num2 = int.parse(stdin.readLineSync()!);
        print("Rango: ");
        for (int i = num1; i <= num2; i++) {
          if (i % 3 == 0) {
            print(i);
          }
        }

      case 93:
        //suma los numeros que se ingresen por consola
        //si el usuario ingresa numero negativo termina de sumar

        print("----------------------");
        print("----- Ejercio Extra 3------");
        print(" Suma infinita ");
        int suma = 0;
        int numero = 0;
        do {
          print("Ingrese un numero. Para salir ingrese un numero negativo");
          numero = int.parse(stdin.readLineSync()!);

          if (numero >= 0) {
            suma = suma + numero;
            print("La suma es: $suma");
          }
        } while (numero >= 0);
        print("SUMA FINALIZADA");
        print("La suma final es: $suma");
        print(" ");

      case 99:
        print("PROGRAMA FINALIZADO");
        break;
      default:
        print("OPCION INVALIDA");
        break;
    }
  } while (opcion != 99);
}
