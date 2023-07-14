import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.itemIndex,
    required this.product,
    required this.press,
  });

  final int itemIndex;
  final Product product;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      height: 190.0,
      child: InkWell(
        onTap: press,
        child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 166.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: Colors.white,
              boxShadow:const [
               BoxShadow(
                  offset: Offset(0, 15),
                  blurRadius: 25,
                  color: Colors.black12
                ),
              ],
            ),
          ),
          Positioned(
            top: 0.0,
            left: 0.0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 160.0,
              width: 200.0,
              child: Image.asset(
                // 'images/images.jpeg',
                // 'images/death_note___ryuk_.jpg',
                product.image,
                // 'images/stage_1.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0.0,
            right: 0.0,
            child: SizedBox(
              height: 136.0,
              width: size.width -  200,
              // child: Align(
              // alignment: AlignmentDirectional.topEnd,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Text(
                      // 'Death_Note',
                      product.title,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Text(
                      // 'Hadxi Hotgam',
                      product.subTitle,
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ),
                  const Spacer(),
                  Padding(
                      padding: const EdgeInsets.all(kDefaultPadding),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding * 1.5,
                          vertical: kDefaultPadding / 5,
                        ),
                        decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child:  Text('Prix: ${product.price}\$'),
                      )),
                ],
              ),
              // ),
            ),
          ),
        ],
      ),
      ),
    );
  }
}
