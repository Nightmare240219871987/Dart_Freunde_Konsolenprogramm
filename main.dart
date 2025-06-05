import 'dart:io';
import 'dart:core';
import 'friend.dart';
import 'vehicle.dart';

// initialisierung / Eingabe
List<Friend> friends = [
  new Friend("Max", 120),
  new Friend("Peter", 90),
  new Friend("Anna", 270),
];

List<Vehicle> vehicles = [
  new Vehicle("Auto", 90),
  new Vehicle("Zug", 120),
  new Vehicle("Fahrrad", 20),
  new Vehicle("Zu Fuß", 5),
];

Map<String, double> distancesMap = {};

Vehicle vehicle = vehicles[1];

void main() {
  printMainMenu();
}

void printMainMenu() {
  clearScreen();
  printDetails();
  print("Reiserouten");
  print("-----------");
  print("1. Freund hinzufügen");
  print("2. Fahrzeug auswählen");
  print("3. Zeige Fahrzeiten an");
  print("4. Beenden");
  print("");
  stdout.write("Bitte wählen Sie : ");
  int? choice = int.parse(stdin.readLineSync()!);

  switch (choice) {
    case 1:
      printAddFriend();
      break;
    case 2:
      printChooseVehicle();
      break;
    case 3:
      printTravelTimes();
      break;
    case 4:
      print("Programm wird beendet.");
      break;
  }
}

void clearScreen() {
  print(Process.runSync("clear", [], runInShell: true).stdout);
}

void printAddFriend() {
  clearScreen();
  print("Freund hinzufügen");
  print("-----------------");
  print("1. Freund hinzufügen");
  print("2. Zurück");
  print("");
  stdout.write("Bitte wählen Sie : ");
  int? choice = int.parse(stdin.readLineSync()!);
  switch (choice) {
    case 1:
      stdout.write("Gib einen Namen ein :");
      String? name = stdin.readLineSync()!;
      print("");
      stdout.write("Gib eine Entfernung ein :");
      int? distance = int.parse(stdin.readLineSync()!);
      friends.add(new Friend(name, distance));
      printMainMenu();
      break;
    case 2:
      printMainMenu();
      break;
  }
}

void printChooseVehicle() {
  clearScreen();
  print("Fahrzeug auswählen");
  print("------------------");
  print("1. Auto");
  print("2. Zug");
  print("3. Fahrrad");
  print("4. zu Fuß");
  print("5. Zurück");
  print("");
  stdout.write("Bitte wählen Sie : ");
  int? choice = int.parse(stdin.readLineSync()!);
  switch (choice) {
    case 1:
      vehicle = vehicles[0];
      printMainMenu();
      break;
    case 2:
      vehicle = vehicles[1];
      printMainMenu();
      break;
    case 3:
      vehicle = vehicles[2];
      printMainMenu();
      break;
    case 4:
      vehicle = vehicles[3];
      printMainMenu();
      break;
    case 5:
      printMainMenu();
      break;
  }
}

void printTravelTimes() {
  clearScreen();
  print("Reisezeiten :");
  print("-------------");
  for (int i = 0; i < friends.length; i++) {
    distancesMap[friends[i].getName()!] = (friends[i].getDistance()! / vehicle.getSpeed()!);
  }
  printSortedDistanceMap(distancesMap);
  print("Drücke ein Beliebige Tasten.");
  stdin.readLineSync();
  printMainMenu();
}

void printDetails() {
  print("Freunde:");
  print("");
  for (int i = 0; i < friends.length; i++) {
    print("${friends[i].getName()} -> ${friends[i].getDistance()} KM");
  }
  print("");

  print("Fahrzeug:");
  print("${vehicle.getVehicleName()}");
  print("");
}

void printSortedDistanceMap(Map<String, double> map) {
  //map.entries.toList().sort((a,b) => a.value.compareTo(b.value));
  
  for(int i = 0; i < map.length; i++){
    print("${map.keys.elementAt(i)} => ${map.values.elementAt(i).toStringAsFixed(2)}h");
  }
}
 