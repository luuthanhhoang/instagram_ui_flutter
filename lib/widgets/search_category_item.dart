import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/theme/colors.dart';

class SearchCategory extends StatelessWidget {
  final String category;
  const SearchCategory({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: white.withOpacity(0.2)),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 25, top: 10, bottom: 10),
          child: Text(
            category,
            style: const TextStyle(color: white),
          ),
        ),
      ),
    );
  }
}
