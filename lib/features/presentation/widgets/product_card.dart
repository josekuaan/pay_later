import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String productName;
  final String price;
  final String originalPrice;
  final String iconText;
  final String iconSubtext;
  final String iconImage;
  final double width;

  const ProductCard({
    Key? key,
    required this.imagePath,
    required this.productName,
    required this.price,
    required this.originalPrice,
    required this.iconText,
    required this.iconSubtext,
    required this.iconImage,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165,
      height: 174,
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 120,

              child: Stack(
                children: [
                  Positioned.fill(
                    left: 0.0,
                    top: 0.0,
                    bottom: -30,
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: 1.0,
                    top: 1.0,
                    child: Material(
                      elevation: 8,
                      shape: const CircleBorder(),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child:iconText.isEmpty?Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                        children: [ Image.asset(
                          iconImage,

                          fit: BoxFit.contain,
                          height: 30,
                        ),],
                        ):
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 165,
                              child: Text(
                                iconText,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Avenir',
                                  overflow: TextOverflow.ellipsis
                                ),
                                textScaler: MediaQuery.of(context).textScaler,
                              ),
                            ),
                            Text(
                              iconSubtext,
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.blue,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Avenir',

                              ),
                              textScaler: MediaQuery.of(context).textScaler,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            width>600?SizedBox(height: 20):Container(),
            Text(
              productName,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Avenir'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.blue,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Avenir',
                  ),
                ),
                Text(
                  originalPrice,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xffB3B3CC),
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Avenir',
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
