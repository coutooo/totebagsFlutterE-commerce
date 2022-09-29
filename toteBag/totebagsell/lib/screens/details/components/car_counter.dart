import 'package:flutter/material.dart';

import '../../../constants.dart';


class CarCounter extends StatefulWidget {
  CarCounter({Key? key}) : super(key: key);

  @override
  State<CarCounter> createState() => _CarCounterState();
}

class _CarCounterState extends State<CarCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        BuildOutlinedButton(icon: Icon(Icons.remove), press: () {
          setState(() {
            if (numOfItems > 1)
            {
              numOfItems--;
            }
          });
        }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin/2),
          child: Text(
            numOfItems.toString().padLeft(2,"0"),
            style: Theme.of(context).textTheme.headline6,
            ),
        ),
        BuildOutlinedButton(icon: Icon(Icons.add), press: (){
          setState(() {
            numOfItems++;
          });
        }),
      ],
    );
  }

  SizedBox BuildOutlinedButton({required Icon icon, required VoidCallback press}) {
    return SizedBox(
        width: 40,
        height: 32,
        child: OutlineButton(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13),),
          onPressed: press, 
          child: icon,
        ),
      );
  }
}