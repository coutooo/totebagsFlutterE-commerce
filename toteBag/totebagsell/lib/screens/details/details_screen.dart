import 'package:flutter/material.dart';
import 'package:totebagsell/models/Product.dart';


import '../../constants.dart';
import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product,),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color, 
      elevation: 0,
      leading: InkWell(
          child: Icon(Icons.arrow_back,
          color: Colors.white,),
          onTap: (){
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          InkWell(
            child: Icon(Icons.search,
            color: Colors.white,),
            onTap: (){},
          ),
        SizedBox(width: kDefaultPaddin /2,),
          InkWell(
            child: Icon(Icons.shopping_cart,
            color: Colors.white,),
            onTap: (){},
      ),
      SizedBox(width: kDefaultPaddin /2,),
        ],
    );
  }
}