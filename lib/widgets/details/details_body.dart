import 'package:flutter/material.dart';
import 'package:flutter_app_1/constants.dart';
import 'package:flutter_app_1/models/product.dart';
import 'package:flutter_app_1/widgets/details/color_dot.dart';
import 'package:flutter_app_1/widgets/details/product_image.dart';

class DetailsBody extends StatelessWidget {
  final Product product;
  const DetailsBody({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
        // height: 300.0,
        decoration: const BoxDecoration(
          color: kBackgroudColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductImage(
              size: size,
              image: product.image,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ColorDot(
                    fillColor: ktextLightColor,
                    isSelected: true,
                  ),
                  ColorDot(
                    fillColor: Colors.blue,
                    isSelected: false,
                  ),
                  ColorDot(
                    fillColor: Colors.red,
                    isSelected: false,
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
              child: Text(
                product.title,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Text(
              'Prix: ${product.price}\$',
              style: const TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.w600,
                color: kSecondaryColor,
              ),
            ),
            const SizedBox(height: kDefaultPadding),
          ],
        ),
      ),
      Container(
        margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
        child: Text(
          product.description,
          style: const TextStyle(color: Colors.white, fontSize: 19.0),
        ),
      ),
    ]);
  }
}
