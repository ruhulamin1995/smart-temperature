import 'dart:io';

void main() {
  print("====================================");
  print("       SMART TEMPERATURE CONVERTER");
  print("====================================");

  while (true) {
    print("\n1. Celsius to Fahrenheit");
    print("\n1. Celsius to Fahrenheit");
    print("2. Fahrenheit to Celsius");
    print("3. Celsius to Kelvin");
    print("4. Kelvin to Celsius");
    print("5. Fahrenheit to Kelvin");
    print("6. Kelvin to Fahrenheit");
    print("7. Exit");

    stdout.write("\nEnter your choice: ");
    String? input = stdin.readLineSync();

    int? choice = int.tryParse(input ?? '');

    // Input validation
    if (choice == null || choice < 1 || choice > 7) {
      print("\nInvalid choice! Please enter a number between 1 and 7.");
      continue;
    }

    // Exit
    if (choice == 7) {
      print("\n====================================");
      print("          Thank You!");
      print("       Program Ended");
      print("====================================");
      break;
    }

    stdout.write("\nEnter temperature: ");
    String? temperatureInput = stdin.readLineSync();

    double? temperature = double.tryParse(temperatureInput ?? '');

    // Temperature input validation
    if (temperature == null) {
      print("\nInvalid temperature! Please enter a valid number.");
      continue;
    }

    double result;

    switch (choice) {
      case 1:
      // Celsius to Fahrenheit
        result = (temperature * 9 / 5) + 32;
        print("\n$temperature°C = ${result.toStringAsFixed(2)}°F");
        break;

      case 2:
      // Fahrenheit to Celsius
        result = (temperature - 32) * 5 / 9;
        print("\n$temperature°F = ${result.toStringAsFixed(2)}°C");
        break;

      case 3:
      // Celsius to Kelvin
        result = temperature + 273.15;
        print("\n$temperature°C = ${result.toStringAsFixed(2)} K");
        break;

      case 4:
      // Kelvin to Celsius
        result = temperature - 273.15;
        print("\n$temperature K = ${result.toStringAsFixed(2)}°C");
        break;

      case 5:
      // Fahrenheit to Kelvin
        result = (temperature - 32) * 5 / 9 + 273.15;
        print("\n$temperature°F = ${result.toStringAsFixed(2)} K");
        break;

      case 6:
      // Kelvin to Fahrenheit
        result = (temperature - 273.15) * 9 / 5 + 32;
        print("\n$temperature K = ${result.toStringAsFixed(2)}°F");
        break;
    }

    // Ask for another conversion
    stdout.write("\nDo you want to perform another conversion? (y/n): ");
    String again = (stdin.readLineSync() ?? '').trim().toLowerCase();

    if (again != 'y') {
      print("\n====================================");
      print("          Thank You!");
      print("       Program Ended");
      print("====================================");
      break;
    }
  }
}