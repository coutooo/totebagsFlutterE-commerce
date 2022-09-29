import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';

class itemCard extends StatelessWidget {
  final Product product;
  final VoidCallback press;
  const itemCard({
    Key? key,
    required this.product, 
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddin),
              //height: 180,
              //width: 160,
              decoration: BoxDecoration(
                color: product.color, // cor de fundo das totes
              borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${product.id}",
                child: Material(color: Colors.transparent,child: SvgPicture.asset(product.image),)),//Image.asset(product.image),), // imagem das totes
              ),
          ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin/4),
              child: Text(
                product.title,
                style: TextStyle(color: kTextLightColor),
              ),
            ),
            Text("\$${product.price}",style: TextStyle(fontWeight: FontWeight.bold),
            ),
        ],
      ),
    );
  }
}
