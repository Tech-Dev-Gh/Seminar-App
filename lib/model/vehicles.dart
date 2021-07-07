import 'package:flutter/material.dart';

class Vehicle {
  final String? name;
  final String? url;
  final String? description;
  final Color? cardColor;
  final int? price;

  Vehicle({this.name, this.url, this.description, this.cardColor, this.price});
}

final List<Vehicle> cars = [
  Vehicle(
    name: "Classic Car",
    url: "assets/images/cars/car1.png",
    description: "Wanna ride the coolest sport car in the world?",
    cardColor: Color(0xB67853),
    price: 34,
  ),
  Vehicle(
    name: "Sport Car",
    url: "assets/images/cars/car2.png",
    description: "Wanna ride the coolest sport car in the world?",
    cardColor: Color(0x60B5F4),
    price: 55,
  ),
  Vehicle(
    name: "Flying Car",
    url: "assets/images/cars/car3.png",
    description: "Wanna ride the coolest sport car in the world?",
    cardColor: Color(0x8382C2),
    price: 500,
  ),
  Vehicle(
    name: "Electric Car",
    url: "assets/images/cars/car4.png",
    description: "Wanna ride the coolest sport car in the world?",
    cardColor: Color(0x2A3640),
    price: 45,
  ),
];

final List<Vehicle> bigCars = [
  Vehicle(
    name: "Motorhome",
    url: "assets/images/big cars/car1.png",
    description:
        "Who hasn’t dreamt about a roadtrip? Rent this van and make your dreams come true.",
    cardColor: Color(0x7EB0AA),
    price: 23,
  ),
  Vehicle(
    name: "Pickup",
    url: "assets/images/big cars/car2.png",
    description:
        "Who hasn’t dreamt about a roadtrip? Rent this van and make your dreams come true.",
    cardColor: Color(0xAD8E73),
    price: 10,
  ),
  Vehicle(
    name: "Airplane",
    url: "assets/images/big cars/car3.png",
    description:
        "Who hasn’t dreamt about a roadtrip? Rent this van and make your dreams come true.",
    cardColor: Color(0xA34D48),
    price: 11,
  ),
  Vehicle(
    name: "Bus",
    url: "assets/images/big cars/car4.png",
    description:
        "Who hasn’t dreamt about a roadtrip? Rent this van and make your dreams come true.",
    cardColor: Color(0xE4C970),
    price: 14,
  ),
];

final List<Vehicle> bikes = [
  Vehicle(
    name: "Vespa",
    url: "assets/images/bikes/bike1.png",
    description:
        "They say one of the best ways to know a city is by riding a bike.",
    cardColor: Color(0xD7913F),
    price: 23,
  ),
  Vehicle(
    name: "Electric Bike",
    url: "assets/images/bikes/bike2.png",
    description:
        "They say one of the best ways to know a city is by riding a bike.",
    cardColor: Color(0xDF7588),
    price: 10,
  ),
  Vehicle(
    name: "Delivery Bike",
    url: "assets/images/bikes/bike3.png",
    description:
        "They say one of the best ways to know a city is by riding a bike.",
    cardColor: Color(0x60C1DC),
    price: 11,
  ),
  Vehicle(
    name: "Scooter",
    url: "assets/images/bikes/bike4.png",
    description:
        "They say one of the best ways to know a city is by riding a bike.",
    cardColor: Color(0x6C6363),
    price: 14,
  ),
];
