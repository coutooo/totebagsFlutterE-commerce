import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';


class AddToCart extends StatelessWidget {
  const AddToCart({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: kDefaultPaddin),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: product.color,
              )
              ),
              child: IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart),color: product.color,),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: TextButton(
                // meter redondo borderradius.circular(18)
                style: TextButton.styleFrom(backgroundColor: product.color),onPressed: (){},child: Text("Buy Now".toUpperCase(), style: TextStyle(fontSize: 17,
              fontWeight: FontWeight.bold,color: Colors.white),),
              ),
              ),
          )
        ],
      ),
    );
  }
}
