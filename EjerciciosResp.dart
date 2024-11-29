import 'dart:io';

void main() {
  int opcion = 0;
  do {
    print("******************************");
    print("Menu de Opciones");
    print(
        "1. Ejercicio 1 \n2. Ejercicio 2 \n3. Ejercicio 7  \n4. Ejercicio 8 \n5. Ejercicio 5 \n6. Ejercicio 10 \n7. Ejercicio 10 \n8. Ejercicio 11 \n9. Ejercicio 12 \n10. Ejercicio 13");
    print(
        "11 Ejercicio extra 1 \n12 Ejercicio extra 2 \n13 Ejercicio extra 3 \n0. Salir");
    print("Seleccione una opcion: ");
    opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        print("#####################");
        print("Ejercicio 1");
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
      case 2:
        int max = 0;
        int min = 0;
        print("#####################");
        print("Ejercicio 2");
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
      case 3:
        print("#####################");
        print("Ejercicio 7");
        print("Ingrese nombre del empleado");
        String nombre = stdin.readLineSync()!;
        print("Ingrese edad del empleado");
        int edad = int.parse(stdin.readLineSync()!);
        print("Ingrese salario del empleado");
        double salario = double.parse(stdin.readLineSync()!);

        if (edad >= 30 && salario > 3000) {
          salario = salario + (salario * 0.10);
        }
        print(
            "El salario inrecementado del empleado $nombre con $edad años de edad es $salario");
        print(" ");
      case 4:
        print("#####################");
        print("Ejercicio 8");
        print("Ingrese su edad");
        int edad = int.parse(stdin.readLineSync()!);
        print("Ingrese su salario mensual");
        double salario = double.parse(stdin.readLineSync()!);
        if (edad >= 18 && edad <= 30 && salario > 2000) {
          print("La personas es elegible para un prestamo");
        } else {
          print("Lo siento, la persona no es elegible para un prestamo");
        }
        print(" ");

      case 5:
        print("#####################");
        print("Ejercicio 5");
        print("Ingrese el año a verificar");
        int year = int.parse(stdin.readLineSync()!);
        if (year % 4 == 0 && year % 100 != 0 || year % 400 == 0) {
          print("El año $year es bisiesto");
        } else {
          print("El año $year no es bisiesto");
        }
        print(" ");

      case 6:
        print("#####################");
        print("Ejercicio 10");
        print("Ingrese su edad");
        int edad = int.parse(stdin.readLineSync()!);
        print("Seleccione nivel de ingles");
        print("1. Basico");
        print("2. Intermedio");
        print("3. Avanzado");
        int nivel = int.parse(stdin.readLineSync()!);
        print("Ingrese promedio de calificaciones");
        double calificacion = double.parse(stdin.readLineSync()!);
        if (edad >= 16 &&
            edad <= 25 &&
            (nivel == 2 || (nivel == 3 && calificacion >= 8))) {
          print(
              "El estudiante es apto para participar en el programa de intercambio");
        } else {
          print(
              "El estudiante no cumple con los requisitos para el programa de intercambio");
        }
      case 7:
        break;
      case 8:
        break;
      case 9:
        break;
      case 10:
        break;
      case 11:
        break;
      case 12:
        break;
      case 13:
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
  } while (opcion != 0);
}
