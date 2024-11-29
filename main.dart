import 'dart:io';

void main() {
  //comentario
  /*comentario

  int edad = 20;
  double promedio = 9.5;
  String nombre = 'Pedro Perez';
  bool genero = true;

  print("La edad de $nombre es $edad");
  print("El promedio es ${promedio * 2}");

  print("#####################");
  print("Ingresar el nombre");
  nombre = stdin.readLineSync()!;
  print("Ingrese su edad");
  edad = int.parse(stdin.readLineSync()!);

  print("El nuevo usuario es $nombre y tiene $edad años");

  
  //Ejercicio 1
  print("#####################");
  print("Ejercicio 1");
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
  print("El salario inrecementado del empleado $nombre con $edad años de edad es $salario");


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

  
  print("#####################");
  print("Ejercicio 5");
  print("Ingrese el año a verificar");
  int year = int.parse(stdin.readLineSync()!);
  if (year % 4 == 0 && year % 100 != 0 || year % 400 == 0) {
    print("El año $year es bisiesto");
  } else {
    print("El año $year no es bisiesto");
  }
  global*/

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
}
