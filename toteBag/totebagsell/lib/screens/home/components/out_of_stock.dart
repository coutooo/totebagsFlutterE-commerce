import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';
import '../../details/components/body.dart';

class OutOfStock extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: buildAppBar(context),
      body: BodyOOS(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white38, 
      elevation: 0,
      leading: InkWell(
          child: Icon(Icons.arrow_back,
          color: Colors.black,),
          onTap: (){
            Navigator.pop(context);
          },
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


class BodyOOS extends StatelessWidget {
  const BodyOOS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Category Out Of Stock".toUpperCase(),textAlign: TextAlign.center, style: TextStyle(fontSize: 17,
              fontWeight: FontWeight.bold,color: Color.fromARGB(255, 8, 6, 6))),
    ));
  }
}