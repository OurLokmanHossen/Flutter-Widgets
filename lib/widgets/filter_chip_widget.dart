import 'package:flutter/material.dart';

class FilterChipWidget extends StatefulWidget {
  const FilterChipWidget({super.key});

  @override
  State<FilterChipWidget> createState() => _FilterChipWidgetState();
}

class _FilterChipWidgetState extends State<FilterChipWidget> {
  final List<String> category = ['shoes', 'Bags', 'Caps'];
  Set<String> selectedCategory = {};
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        spacing: 13,
        children: List.generate(category.length, (index) {
          return FilterChip(
            selectedColor: Colors.red[100],
            showCheckmark: false,
            selected: selectedCategory.contains(category[index]),
            label: Text(category[index]),
            onSelected: (bool value) {
              setState(() {
                if (value)
                  selectedCategory.add(category[index]);
                else
                  selectedCategory.remove(category[index]);
              });
            },
          );
        }),
      ),
    );
  }
}
