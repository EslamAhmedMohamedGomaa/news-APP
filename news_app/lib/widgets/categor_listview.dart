import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class categorylistview extends StatelessWidget {
  final List<CategoryModel> cateogries = const [
    CategoryModel(image: "lib/assets/entertaiment.avif", name: "entertainment"),
    CategoryModel(image: "lib/assets/general.avif", name: "general"),
    CategoryModel(image: "lib/assets/health.avif", name: "entertainment"),
    CategoryModel(image: "lib/assets/quraan.png", name: "entertainment"),
    CategoryModel(image: "lib/assets/sports.avif", name: "entertainment"),
    CategoryModel(image: "lib/assets/sports.avif", name: "entertainment"),
    CategoryModel(image: "lib/assets/entertaiment.avif", name: "entertainment"),
  ];
  const categorylistview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cateogries.length,
        itemBuilder: (context, index) {
          return categorycard(loma: cateogries[index]);
        },
      ),
    );
  }
}
