import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pay_later/common/common.dart';
import 'package:pay_later/common/search_widget.dart';
import 'package:pay_later/features/presentation/widgets/product_card.dart';
import 'package:pay_later/helper/helper.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});
  final search=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(

          children: [
            Container(
              color: riverGreen,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 158,
                        child: Text(
                          "Pay later everywhere",
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Axiforma'),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            "Shopping limit: ₦0",

                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Axiforma'),
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              "Activate Credit",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Axiforma'),
                            ),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                padding: const EdgeInsets.symmetric( vertical: 18,horizontal: 35),
                                backgroundColor: blueButton),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
           Container(
             color: Colors.white,
             padding: const EdgeInsets.symmetric(horizontal: 20),
             height: 100,
             child:  Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 SizedBox(
                    width:280,
                     child: SearchWidget(controller:search, onChanged: (v){})),

                 Container(
                   width: 50,
                   decoration: BoxDecoration(
                       color: grayBackground,
                       borderRadius: BorderRadius.circular(10)
                   ),
                   child: Image.asset("assets/scan.png"),
                 )
               ],
             ),
           ),
           const  FirstFuturedProduct(),
           const SecondFuturedProduct(),
            Container(
              height: 400,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20,right:20,top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Featured Merchants",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff33334D),
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Avenir'),
                        ),
                        Text(
                          "Vew All",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Avenir'),
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                      child: GridView.count(
                          primary: false,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                          crossAxisCount: 4,
                        childAspectRatio: 1.0,
                        physics: const NeverScrollableScrollPhysics(),
                      children: [
                        _buildGridItem("assets/justrite.png", "Justrite"),
                        _buildGridItem("assets/orile.png", "Orile Restaurant"),
                        _buildGridItem("assets/slot.png", "Slot"),
                        _buildGridItem("assets/point.png", "Pointek"),
                        _buildGridItem("assets/ogabassey.png", "Ogabassey"),
                        _buildGridItem("assets/cas.png", "Casper Store"),
                        _buildGridItem("assets/dream.png", "Dreamworks"),
                        _buildGridItem("assets/humb.png", "Hubmart"),
                        _buildGridItem("assets/used.png", "Just Used"),
                        _buildGridItem("assets/fones.png", "Just Fones"),

                      ],),
                    ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
   Widget _buildGridItem(String imagePath, String text) {
     return Column(
       // mainAxisAlignment: MainAxisAlignment.center,
       // crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         // Image with BoxFit.contain to ensure no overflow
         Image.asset(
           imagePath,
           width: 55.0,  // You can adjust this width as needed
           height: 55.0, // You can adjust this height as needed
           fit: BoxFit.contain,
         ),
         // Text with flexible space and centered
         Text(
           text,
           style: const TextStyle(
             fontSize: 12,
             fontWeight: FontWeight.w500,
             fontFamily: 'Avenir',
             textBaseline: TextBaseline.alphabetic,
             overflow: TextOverflow.ellipsis
           ),
           textAlign: TextAlign.center,
         ),
       ],
     );
   }
}

class SecondFuturedProduct extends StatelessWidget {
  const SecondFuturedProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: grayBackground,
      padding: const EdgeInsets.only(left: 20, right: 20,bottom: 10),
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 165,
            height: 174,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    // color: Colors.red,
                    height: 120,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0.0,
                          // Adjust the X position where the circles appear
                          top: 0.0,
                          bottom: -30,
                          // right: -1,
                          child: Image.asset(
                            "assets/speaker.png",
                            // Put the correct path for your image
                            fit: BoxFit.cover,

                          ),
                        ),
                        Positioned(
                          left: 1.0,
                          // Adjust the X position where the circles appear
                          top: 1.0,
                          // Adjust the Y position to start the cascade effect
                          child:  Material(
                            elevation: 8,
                            shape: const CircleBorder(),
                            child: CircleAvatar(
                              radius: 25, // Circle radius
                              backgroundColor: Colors.white,
                              child: Image.asset(
                                "assets/okay.png",
                                // Put the correct path for your image
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // const SizedBox(height: 20),
                  const Text(
                    "Anker Soundcore..",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Avenir'),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("₦ 39,780",
                          style: TextStyle(
                              fontSize: 14,
                              color: blueButton,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Avenir')),
                      Text("₦ 88,000",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xffB3B3CC),
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Avenir',
                              decoration: TextDecoration.lineThrough
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),

          const SizedBox(width: 20),
          Container(
            width: 165,
            height: 174,
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
                          // Adjust the X position where the circles appear
                          top: 0.0,
                          bottom: -30,
                          child: Image.asset(
                            "assets/backCam.png",
                            // Put the correct path for your image
                            fit: BoxFit.cover,

                          ),
                        ),
                        Positioned(
                          left: 1.0,
                          // Adjust the X position where the circles appear
                          top: 1.0,
                          // Adjust the Y position to start the cascade effect
                          child: Material(
                            elevation: 8,
                            shape: const CircleBorder(),
                            child: CircleAvatar(
                              radius: 25, // Circle radius
                              backgroundColor: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/apple.png",
                                    // Put the correct path for your image
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  const Text(
                    "iPhone 12 Pro",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Avenir'),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("₦ 490,500",
                          style: TextStyle(
                              fontSize: 14,
                              color: blueButton,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Avenir')),
                      Text("₦ 515,000",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xffB3B3CC),
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Avenir',
                              decoration: TextDecoration.lineThrough
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(width: 20),
          Container(
            width: 165,
            height: 174,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(

                    height: 120,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          left: 0.0,
                          // Adjust the X position where the circles appear
                          top: 0.0,
                          bottom: -30,
                          child: Image.asset(
                            "assets/phone1.png",
                            // Put the correct path for your image
                            fit: BoxFit.cover,

                          ),
                        ),
                        Positioned(
                          left: 1.0,
                          top: 1.0,
                          child:Material(
                            elevation: 8,
                            shape: const CircleBorder(),
                            child: CircleAvatar(
                              radius: 25, // Circle radius
                              backgroundColor: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/okay.png",
                                    // Put the correct path for your image
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  const Text(
                    "Nokia G20",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Avenir'),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("₦ 39,780",
                          style: TextStyle(
                              fontSize: 14,
                              color: blueButton,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Avenir')),
                      Text("₦ 88,000",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xffB3B3CC),
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Avenir',
                              decoration: TextDecoration.lineThrough
                          ))
                    ],
                  )

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FirstFuturedProduct extends StatelessWidget {
  const FirstFuturedProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: grayBackground,
      padding: const EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
      child:ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          var product = products[index];
          return ProductCard(
            imagePath: product['imagePath']!,
            productName: product['productName']!,
            price: product['price']!,
            originalPrice: product['originalPrice']!,
            iconText: product['iconText']!,
            iconSubtext: product['iconSubtext']!,
            iconImage: product['iconImage']!,
          );
        },
        separatorBuilder: (context,i){
        return  SizedBox(width: 20);
        },
      ),


    );
  }
}
