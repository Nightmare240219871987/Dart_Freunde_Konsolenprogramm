import 'dart:io';
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
  ];

  Vehicle vehicle = vehicles[1];

void main() {
  printDetails();
  printTravelTimes();
  //printMainMenu();  
}

void printMainMenu() {
  print("Reiserouten");
  print("-----------------------");
  print("1. Freund hinzufügen");
  print("2. Fahrzeug auswählen");
  print("3. Zeige Fahrzeiten an");
  print("4. Beenden");
  print("");
  stdout.write("Bitte wählen Sie : ");
  int? choice = int.parse(stdin.readLineSync()!);

  switch(choice){
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
      break;
  }
}

void printAddFriend() {
  print("Freund hinzufügen");
  print("-----------------");
  print("1. Freund hinzufügen");
  print("2. Zurück");
  print("");
  stdout.write("Bitte wählen Sie : ");
}

void printChooseVehicle() {
  print("Fahrzeug hinzufügen");
  print("-------------------");
  print("1. Auto");
  print("2. Zug");
  print("3. Fahrrad");
  print("4. Zurück");
  print("");
  stdout.write("Bitte wählen Sie : ");
}

void printTravelTimes() {
  print("Reisezeiten :");
  print("-------------");
  for(int i = 0; i < friends.length; i++){
    print("${friends[i].getName()}:${friends[i].getDistance()} KM, Zeit: ${
      (friends[i].getDistance()! / vehicle.getSpeed()!).toStringAsFixed(2)
    }h");
  }
}

void printDetails(){
  print("Freunde:");
  print("");
  for(int i = 0; i < friends.length; i++)
  {
    print("${friends[i].getName()} -> ${friends[i].getDistance()} KM");
  }
  print("");

  print("Fahrzeug:");
  print("");
}


