import 'dart:io';
import 'dart:math';

//CONTACTO DOCENTE
void main() {
  int opcion = 5;

  List<int> numeros = [3, 7, 21, 9, 3, 6, 2, 45, 32, 6, 226];

  do {
    print("******************************");
    print("-----Menu de ejercicios-----");
    print("1. Ejercicio 1\n2. Ejercicio 2\n3. Ejercicio 3\n4. Ejercicio 4");
    print("5. Ejercicio 5\n6. Ejercicio 6\n7. Ejercicio 7\n8. Ejercicio 8");
    print("10. Ejercicio 10");
    print("-----Arreglos-----");
    print("11. Ejercicio 1.1\n12. Ejercicio 1.2\n13. Ejercicio 1.3");
    print("14. Ejercicio 1.4\n15. Ejercicio 1.5\n16. Ejercicio Extra 1.6");
    print("-----Listas-----");
    print(
        "17. Ejercicio 2.1\n18. Ejercicio 2.2\n19. Ejercicio 2.3 \n20. Ejercicio 2.4 \n21. Ejercicio 2.5");
    print("-----Extras-----");
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
        print("Ingrese el valor de a:");
        int a = int.parse(stdin.readLineSync()!);

        if (a == 0) {
          print("El valor de a no puede ser 0");
          break;
        }

        print("Ingrese el valor de b:");
        int b = int.parse(stdin.readLineSync()!);
        print("Ingrese el valor de c:");
        int c = int.parse(stdin.readLineSync()!);

        int disc = b * b - 4 * a * c;

        if (disc < 0) {
          print("El discriminante es negativo");
        } else {
          double raizdisc = sqrt(disc);

          double x1 = (-b + raizdisc) / (2 * a);
          double x2 = (-b - raizdisc) / (2 * a);

          print("El valor de x1 es $x1");
          print("El valor de x2 es $x2");
          print(" ");
          break;
        }

      case 4:
        print("----------------------");
        print("-----Ejercicio 4------");
        print(" ");
        print("Ingrese valor en dolares:");
        double dolares = double.parse(stdin.readLineSync()!);
        double euros = dolares * 0.95;
        print("El valor en euros es $euros");
        double yenes = dolares * 151.52;
        print("El valor en yenes es $yenes");
        double libras = dolares * 0.79;
        print("El valor en libras es $libras");
        print(" ");

      case 5:
        print("----------------------");
        print("-----Ejercicio 5------");
        print(" ");
        print("Ingrese el año a verificar");
        int year = int.parse(stdin.readLineSync()!);
        if (year % 4 == 0 && year % 100 != 0 || year % 400 == 0) {
          print("El año $year es bisiesto");
        } else {
          print("El año $year no es bisiesto");
        }
        print(" ");

      case 6:
        print("----------------------");
        print("-----Ejercicio 6------");
        print(" ");
        print("Ingrese un número");
        int num = int.parse(stdin.readLineSync()!);

        if (num <= 1) {
          print("El número no es primo");
          break;
        }

        bool esPrimo = true;

        for (int i = 2; i <= sqrt(num).toInt(); i++) {
          if (num % i == 0) {
            esPrimo = false;
          }
        }

        if (esPrimo) {
          print("El número es primo");
        } else {
          print("El número no es primo");
        }
        print(" ");

      case 7:
        print("----------------------");
        print("-----Ejercicio 7------");
        print(" ");
        print("Ingrese nombre del empleado");
        String nombre = stdin.readLineSync()!;
        print("Ingrese la edad del empleado");
        int edad = int.parse(stdin.readLineSync()!);
        print("Ingrese el salario del empleado");
        double salario = double.parse(stdin.readLineSync()!);

        if (edad > 30 && salario > 3000) {
          salario = salario * 1.10;
        }

        print("El salario del empleado $nombre es $salario");
        print(" ");

      case 8:
        print("----------------------");
        print("-----Ejercicio 8------");
        print(" ");
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

      case 9:
        print("----------------------");
        print("-----Ejercicio 9------");
        print(" ");

      case 10:
        print("----------------------");
        print("-----Ejercicio 10------");
        print(" ");
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
        print(" ");

      case 11:
        print("----------------------");
        print("-----Ejercicio 1.1------");
        //crear un programa que tome dos valores y  que despliegue una suma de los numeros dentro del arreglo
        //los números deben ser multiplos 5
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

      case 12:
        print("----------------------");
        print("-----Ejercicio 1.2------");
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

      case 13:
        print("----------------------");
        print("-----Ejercicio 1.3------");
        print(" ");
        print("Ingrese el número: ");
        int n = int.parse(stdin.readLineSync()!);
        print("El factorial de 5 es: ${factorial(n)}");
        print(" ");

      case 14:
        print("----------------------");
        print("-----Ejercicio 1.4------");
        print(" ");
        print("La suma de los cuadrados hasta el 50 es: ${sumaCuadrados()}");
        print(" ");

      case 15:
        print("----------------------");
        print("-----Ejercicio 1.5------");
        print(" ");
        print("La suma de la serie armonica es: ${sumaSerieArmonica()}");
        print(" ");

      case 16:
        print("----------------------");
        print("-----Ejercicio 1.6 Extra------");
        print(" ");
        print(" Serie de fibonacci: ");
        print(" ");
        print("Ingrese el número: ");
        int n = int.parse(stdin.readLineSync()!);
        print("La serie Aurea es: ");
        sumaSerieFibonacci(n);
        print(" ");

      case 17:
        print("----------------------");
        print("-----Ejercicio 2.1------");
        print(" ");
        print("Ejercicio a Números pares");
        print("Los numeros pares son: ${pares(numeros)}");
        print(" ");

      case 18:
        print("----------------------");
        print("-----Ejercicio 2.2------");
        print(" ");
        print("Ejercicio b Buscar elemento");
        print("Ingrese el número a buscar: ");
        int num = int.parse(stdin.readLineSync()!);
        print("${buscar(num, numeros)}");
        print(" ");

      case 19:
        print("----------------------");
        print("-----Ejercicio 2.3------");
        print(" ");
        print("Ejercicio c Indices");
        print("Ingrese el número a buscar: ");
        int num = int.parse(stdin.readLineSync()!);
        print("${buscarIndices(num, numeros)}");
        print(" ");

      case 20:
        print("----------------------");
        print("-----Ejercicio 2.4------");
        print(" ");
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

      case 21:
        print("----------------------");
        print("-----Ejercicio 2.5------");
        print(" ");
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
        print("");

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

//Listas
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
