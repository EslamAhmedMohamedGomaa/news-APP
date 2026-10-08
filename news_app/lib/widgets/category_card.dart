import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

class categorycard extends StatelessWidget {
  final CategoryModel loma;
  const categorycard({super.key, required this.loma});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        height: 100,
        width: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(loma.image),
          ),
          color: Colors.amber,
          borderRadius: BorderRadius.circular(20),
        ),

        child: Center(
          child: Text(loma.name, style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
