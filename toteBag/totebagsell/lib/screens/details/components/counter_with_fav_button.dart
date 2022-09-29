import 'package:flutter/material.dart';

import 'car_counter.dart';


class CounterWithFavButton extends StatelessWidget {
  const CounterWithFavButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CarCounter(),
        Container(
          padding: EdgeInsets.zero,
          height: 32,
          width: 32,
          decoration: BoxDecoration(color: Color(0xFFFF6464), shape: BoxShape.circle,
        ),
        child: Icon(Icons.favorite, color: Colors.white),
        ),
      ],
    );
  }
}

