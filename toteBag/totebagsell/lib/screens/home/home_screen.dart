import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:totebagsell/constants.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: 
          InkWell(
            child: Icon(Icons.arrow_back,
            color: Colors.black,),
            onTap: (){},
          ),
      actions: <Widget>[
        InkWell(
          child: Icon(Icons.search,
          color: Colors.black,),
          onTap: (){},
        ),
        SizedBox(width: kDefaultPaddin /2,),
        InkWell(
          child: Icon(Icons.shopping_cart,
          color: Colors.black,),
          onTap: (){},
        ),
        SizedBox(width: kDefaultPaddin /2,),
      ],
    );
  }
}