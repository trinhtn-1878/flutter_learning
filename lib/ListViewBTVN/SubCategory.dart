import 'dart:math';
import 'package:flutter/material.dart';
import 'dart:ui';

class Category {
  String name;
  List<SubCategory> subCategories;

  Category({this.name, this.subCategories});

  static List<Category> get generateCategories {
    return List.generate(10, (index) {
      int nameIndex = Random().nextInt(4);
      return Category(
        name: "${nameCategories[nameIndex]} $index",
        subCategories: SubCategory.generateSubCategories,
      );
    });
  }
}

class SubCategory {
  String name;
  int numberDoctor;
  String imagePath;
  Color color;

  SubCategory({this.name, this.numberDoctor, this.imagePath, this.color});

  static List<SubCategory> get generateSubCategories {
    return List.generate(20, (index) {
      int subNameIndex = Random().nextInt(2);
      int numberOfDoctor = Random().nextInt(50) + 1;
      int imageIndex = Random().nextInt(3);
      int colorIndex = Random().nextInt(3);
      return SubCategory(
        name: nameSubCategories[subNameIndex],
        numberDoctor: numberOfDoctor,
        imagePath: imageSubCategories[imageIndex],
        color: colors[colorIndex]
      );
    });
  }
}

final colors = [Colors.redAccent.withOpacity(0.5), Colors.orangeAccent.withOpacity(0.7), Colors.pink.withOpacity(0.5)];
final nameCategories = ["Adults", "Children", "Women", "Men"];
final nameSubCategories = ["Cough & Cold", "Heart Specialist"];
//Thay thành ảnh của mình.
final imageSubCategories = ["Asset/butter.png", "Asset/butter1.png", "Asset/butter2.png"];