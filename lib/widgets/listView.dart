import 'package:flutter/material.dart';

class ListviewW extends StatelessWidget {
  const ListviewW({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      // scrollDirection: Axis.horizontal,
      physics: ClampingScrollPhysics(),
      children: [
        Image.network(
          'https://i.pinimg.com/736x/f2/03/da/f203da942d758c6d0b281388269426e5.jpg',
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Image.network(
            'https://i.pinimg.com/736x/f6/c6/19/f6c619af2edbfa44e7bab9930e0843c5.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
