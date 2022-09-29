import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
    Product(
    id: 1,
    title: "Cat Tote Bag",
    price: 999,
    size: 12,
    description: dummyText,
    image: "assets/images/cattote.svg",
    color: Color(0xFFAEAEAE),
  ),
  Product(
      id: 2,
      title: "Cat Eyes Tote Bag",
      price: 111,
      size: 12,
      description: dummyText,
      image: "assets/images/cateyetote.svg",
      color: Color(0xFFFB7883)),
  Product(
      id: 3,
      title: "Money Tote Bag",
      price: 500,
      size: 10,
      description: dummyText,
      image: "assets/images/moneytote.svg",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Blue Tote Bag",
      price: 300,
      size: 11,
      description: dummyText,
      image: "assets/images/bluetote.svg",
      color: Color(0xFFE6B398)),
    Product(
      id: 5,
      title: "Wakanda Tote Bag",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/images/wakandatote.svg",
      color: Color(0xFFD3A984)),
    Product(
      id: 6,
      title: "Orange Tote Bag",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/orangetote.svg",
      color: Color(0xFF3D82AE)),
];

String dummyText =
    "Random description is simply random text of the printing and textil industry. Tote bags are in the industry's and in ever since they are funny af. When an unknown printer took a galley.";
