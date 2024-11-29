import 'dart:io';
import 'dart:math';

void main() {
  int opcion;
  do {
    print("******************************");
    print("-----Menu de ejercicios - 00----");
    print(
        "1. Ejercicio 3.0\n2. Ejercicio 6.0\n3. Ejercicio 9.0\n4 Ejercicio 12.0");
    print("-----Menu de ejercicios - 01----");
    print("5. Ejercicio 3.1\n6. Ejercicio 6.1\n7. Ejercicio 9.1 ");
    print("-----Menu de ejercicios - 02----");
    print(
        "8. Ejercicio 3.2\n9. Ejercicio 6.2\n10. Ejercicio 9.2\n0. --Salir--");
    print("******************************");
    print("Escoja una opcion: ");
    opcion = int.parse(stdin.readLineSync()!);
    switch (opcion) {
      case 1:
        print("Ejercicio 3.0 Raices de una ecuacion de segundo grado");
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
        }
      case 2:
        print("Ejercicio 6.0 Números primos");
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
      case 3:
        print("Ejercicio 9.0 Descuento");
        print(" ");
        print("Ingrese su edad: ");
        int edad = int.parse(stdin.readLineSync()!);
        print("Ingrese el precio del producto: ");
        double precio = double.parse(stdin.readLineSync()!);

        if ((edad < 18 || edad > 60) && precio > 100) {
          print("La persona es elegible para un descuento del 10%");
        } else {
          print("Lo siento, la persona no es elegible para un descuento");
        }
        print("");

      case 4:
        print("Ejercicio 12.0 Entrevista");
        print("");
        print("Ingrese su edad: ");
        int edad = int.parse(stdin.readLineSync()!);
        print("Ingrese los años de experiencia: ");
        int experiencia = int.parse(stdin.readLineSync()!);

        if ((edad >= 25 && edad <= 35) && experiencia >= 3) {
          print("El aspirante puede ser selecionado para una entrevista");
        } else {
          print(
              "Lo siento, el aspirante no puede ser selecionado para una entrevista");
        }

        print("");

      case 5:
        print("Ejercicio 3.1 Salario Profesión");
        print("");
        double salario = 0;
        print("Ingrese su edad: ");
        int edad = int.parse(stdin.readLineSync()!);
        print("Seleccione su profesion: 1. Médico 2. Abogado");
        int profesion = int.parse(stdin.readLineSync()!);

        if (edad < 30) {
          salario = 1200;
        } else if (edad >= 30 && edad <= 50) {
          salario = 1800;
        } else if (edad > 50) {
          salario = 2200;
        }

        if (profesion == 1) {
          salario = salario * 1.1;
        } else if (profesion == 2) {
          salario = salario * 1.05;
        }

        print("Su salario es: $salario");
        print("");

      case 6:
        print("Ejercicio 6.1 Factorial");
        print("");

        int factorial = 1;

        for (int i = 1; i <= 20; i++) {
          factorial = factorial * i;
        }

        print("El producto de los primeros 20 numeros es: $factorial");
        print("");

      case 7:
        print("Ejercicio 9.1 Suma Cubos");
        print("");

        int sumaCubos = 0;

        for (int i = 1; i <= 20; i++) {
          sumaCubos = sumaCubos + pow(i, 3).toInt();
        }

        print("La suma de los primeros 50 cubos es: $sumaCubos");
        print("");
      case 8:
        print("Ejercicio 3.2 Arreglo Ordenado");
        print("");
        List<int> arreglo = [];
        print("Ingrese el tamaño del arreglo: ");
        int tamano = int.parse(stdin.readLineSync()!);
        print("Ingrese los elementos del arreglo: ");
        for (int i = 0; i < tamano; i++) {
          arreglo.add(int.parse(stdin.readLineSync()!));
        }
        arreglo.sort();
        print("El arreglo ordenado es: $arreglo");
        print("");

      case 9:
        print("Ejercicio 6.2 Empleados Empresa");
        print(" ");
        List<dynamic> empleados = [
          {
            'nombre': 'Ana Pérez',
            'cargo': 'Analista',
            'salario': 2500,
            'departamento': 'Finanzas'
          },
          {
            'nombre': 'Carlos Gómez',
            'cargo': 'Desarrollador',
            'salario': 1800,
            'departamento': 'Tecnología'
          },
          {
            'nombre': 'Luis Torres',
            'cargo': 'Diseñador',
            'salario': 2200,
            'departamento': 'Marketing'
          },
          {
            'nombre': 'María López',
            'cargo': 'Gerente',
            'salario': 3500,
            'departamento': 'Finanzas'
          },
          {
            'nombre': 'Juan Sánchez',
            'cargo': 'Soporte',
            'salario': 1500,
            'departamento': 'Tecnología'
          },
          {
            'nombre': 'Pedro Martínez',
            'cargo': 'Contador',
            'salario': 2400,
            'departamento': 'Finanzas'
          },
          {
            'nombre': 'Laura Castillo',
            'cargo': 'Tester',
            'salario': 1900,
            'departamento': 'Tecnología'
          },
          {
            'nombre': 'Sofía Herrera',
            'cargo': 'Especialista en Marketing',
            'salario': 2800,
            'departamento': 'Marketing'
          },
          {
            'nombre': 'Gabriel Rivas',
            'cargo': 'Coordinador',
            'salario': 2600,
            'departamento': 'Finanzas'
          },
          {
            'nombre': 'Martín Rodríguez',
            'cargo': 'Administrador de Redes',
            'salario': 2200,
            'departamento': 'Tecnología'
          },
          {
            'nombre': 'Camila García',
            'cargo': 'Asistente de Marketing',
            'salario': 2000,
            'departamento': 'Marketing'
          },
          {
            'nombre': 'Lucía Morales',
            'cargo': 'Analista Financiero',
            'salario': 2700,
            'departamento': 'Finanzas'
          },
          {
            'nombre': 'Fernando Ruiz',
            'cargo': 'Ingeniero de Software',
            'salario': 3200,
            'departamento': 'Tecnología'
          },
          {
            'nombre': 'Isabel Vega',
            'cargo': 'Diseñadora Gráfica',
            'salario': 2300,
            'departamento': 'Marketing'
          },
          {
            'nombre': 'Oscar Luna',
            'cargo': 'Gerente de TI',
            'salario': 4000,
            'departamento': 'Tecnología'
          }
        ];

        print("Ingrese el valor del salario: ");
        double salario = double.parse(stdin.readLineSync()!);
        print(
            "Seleccione el departamento: 1. Finanzas 2. Tecnología 3. Marketing");
        int departamento = int.parse(stdin.readLineSync()!);

        String departamentoNombre;
        if (departamento == 1) {
          departamentoNombre = 'Finanzas';
        } else if (departamento == 2) {
          departamentoNombre = 'Tecnología';
        } else if (departamento == 3) {
          departamentoNombre = 'Marketing';
        } else {
          print("Opción inválida.");
          return;
        }

        List<dynamic> empleadosFiltrados = empleados.where((empleado) {
          return empleado['salario'] < salario &&
              empleado['departamento'] == departamentoNombre;
        }).toList();

        if (empleadosFiltrados.isEmpty) {
          print("No se encontraron empleados con ese salario y departamento.");
        } else {
          print(
              "Empleados con salario menor a $salario y departamento $departamentoNombre:");
          for (var empleado in empleadosFiltrados) {
            print(
                "Nombre: ${empleado['nombre']}, Cargo: ${empleado['cargo']}, Salario: ${empleado['salario']}, Departamento: ${empleado['departamento']}");
          }
        }
        print("  ");

      case 10:
        print("Ejercicio 9.2  Inventario de Productos");
        print(" ");
        List<dynamic> productos = [
          {
            'nombre': 'Camiseta Básica',
            'tallas': {'S': 10, 'M': 15, 'L': 5},
            'precio': 19.99,
            'marca': 'BasicWear'
          },
          {
            'nombre': 'Jeans Clásicos',
            'tallas': {'S': 8, 'M': 12, 'L': 10},
            'precio': 49.99,
            'marca': 'DenimPlus'
          },
          {
            'nombre': 'Chaqueta de Cuero',
            'tallas': {'S': 4, 'M': 6, 'L': 3},
            'precio': 129.99,
            'marca': 'LeatherCraft'
          },
          {
            'nombre': 'Sudadera Deportiva',
            'tallas': {'S': 20, 'M': 25, 'L': 10},
            'precio': 39.99,
            'marca': 'ActiveLine'
          },
          {
            'nombre': 'Vestido Elegante',
            'tallas': {'S': 5, 'M': 10, 'L': 2},
            'precio': 89.99,
            'marca': 'ElegantStyle'
          },
          {
            'nombre': 'Zapatos Casuales',
            'tallas': {'38': 12, '39': 15, '40': 8},
            'precio': 59.99,
            'marca': 'ComfortStep'
          },
          {
            'nombre': 'Camisa Formal',
            'tallas': {'S': 0, 'M': 14, 'L': 5},
            'precio': 35.99,
            'marca': 'OfficeWear'
          },
          {
            'nombre': 'Falda Corta',
            'tallas': {'S': 10, 'M': 8, 'L': 3},
            'precio': 29.99,
            'marca': 'TrendySkirts'
          },
          {
            'nombre': 'Gorra Unisex',
            'tallas': {'U': 30},
            'precio': 14.99,
            'marca': 'CapMaster'
          },
          {
            'nombre': 'Chaleco Ligero',
            'tallas': {'S': 6, 'M': 10, 'L': 4},
            'precio': 49.99,
            'marca': 'LayeredStyle'
          }
        ];
        print("Ingrese la cantidad minima de productos en inventario:");
        int cantidadMinima = int.parse(stdin.readLineSync()!);

        stockProductos(productos, cantidadMinima);
      case 0:
        print("FIN DEL PROGRAMA");
        break;
      default:
        print("Opcion no valida");
        print("");
    }
  } while (opcion != 0);
}

void stockProductos(List<dynamic> productos, int cantidadMinima) {
  print(
      "Productos con stock bajo (menos de $cantidadMinima unidades en alguna talla o en 0):");

  bool stockBajo = false;

  for (var producto in productos) {
    for (var talla in producto['tallas'].entries) {
      if (talla.value < cantidadMinima || talla.value == 0) {
        print(
            "Nombre: ${producto['nombre']}, Talla: ${talla.key}, Stock: ${talla.value}");
        stockBajo = true;
      }
    }
  }

  if (!stockBajo) {
    print("No hay productos con stock bajo.");
  }
}
