import 'package:flutter/material.dart';
import 'package:meals_app/models/category.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem({
    required this.category,
    required this.onSelectCategory,
    super.key,
  });

  final Category category;
  final void Function() onSelectCategory;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onSelectCategory();
      },
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(.55),
              category.color.withOpacity(.9),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
        ),
      ),
    );
  }
}