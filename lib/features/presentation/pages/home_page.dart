import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pay_later/common/common.dart';
import 'package:pay_later/common/search_widget.dart';

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
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
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
                  const SizedBox(height: 20),
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
                        _buildGridItem("assets/justrite.png", "Justrite"),
                        _buildGridItem("assets/orile.png", "Orile Restaurant"),
                        _buildGridItem("assets/slot.png", "Slot"),
                        _buildGridItem("assets/ogabassey.png", "Ogabassey"),
                        _buildGridItem("assets/ogabassey.png", "Ogabassey"),
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
       mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         // Image with BoxFit.contain to ensure no overflow
         Image.asset(
           imagePath,
           width: 50.0,  // You can adjust this width as needed
           height: 50.0, // You can adjust this height as needed
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
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 180,
            height: 174,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 72,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Image.asset(
                            "assets/speaker.png",
                            // Put the correct path for your image
                            fit: BoxFit.cover,
    height: 69,
                          ),
                        ),
                        Positioned(
                          left: 2.0,
                          // Adjust the X position where the circles appear
                          top: -1.0,
                          // Adjust the Y position to start the cascade effect
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            height: 28,
                            decoration: BoxDecoration(
                              color: Colors.white,

                              borderRadius: BorderRadius.circular(50),

                              boxShadow: [BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                const Offset(0, 3), // changes position of shadow
                              ),],
                            ),
                            child:Image.asset("assets/okay.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
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
                              fontFamily: 'Avenir'))
                    ],
                  )
                ],
              ),
            ),
          ),

          const SizedBox(width: 20),
          Container(
            width: 161,
            height: 174,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 72,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Image.asset(
                            "assets/backCam.png",
                            // Put the correct path for your image
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          left: -10.0,
                          // Adjust the X position where the circles appear
                          top: -10.0,
                          // Adjust the Y position to start the cascade effect
                          child: CircleAvatar(
                            radius: 30, // Circle radius
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
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
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
                              fontFamily: 'Avenir'))
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(width: 20),
          Container(
            width: 161,
            height: 174,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 72,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Image.asset(
                            "assets/phone1.png",
                            // Put the correct path for your image
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          left: -10.0,
                          // Adjust the X position where the circles appear
                          top: -10.0,
                          // Adjust the Y position to start the cascade effect
                          child:CircleAvatar(
                            radius: 30, // Circle radius
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
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
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
                              fontFamily: 'Avenir'))
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
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 161,
            height: 174,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 72,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Image.asset(
                            "assets/phone1.png",
                            // Put the correct path for your image
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Positioned(
                          left: -15.0,
                          // Adjust the X position where the circles appear
                          top: -10.0,
                          // Adjust the Y position to start the cascade effect
                          child: CircleAvatar(
                            radius: 30, // Circle radius
                            backgroundColor: Colors.white,
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Pay",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Avenir'),
                                ),
                                Text(
                                  "400%",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: blueButton,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Avenir'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
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
                              fontFamily: 'Avenir'))
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(width: 20),
          Container(
            width: 161,
            height: 174,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 72,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Image.asset(
                            "assets/phone1.png",
                            // Put the correct path for your image
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Positioned(
                          left: -10.0,
                          // Adjust the X position where the circles appear
                          top: -10.0,
                          // Adjust the Y position to start the cascade effect
                          child: CircleAvatar(
                            radius: 30, // Circle radius
                            backgroundColor: Colors.white,
                            child: Column(
                              children: [
                                Text(
                                  "Pay",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Avenir'),
                                ),
                                Text(
                                  "400%",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: blueButton,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Avenir'),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
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
                              fontFamily: 'Avenir'))
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(width: 20),
          Container(
            width: 161,
            height: 174,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 72,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Image.asset(
                            "assets/phone1.png",
                            // Put the correct path for your image
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Positioned(
                          left: -10.0,
                          // Adjust the X position where the circles appear
                          top: -10.0,
                          // Adjust the Y position to start the cascade effect
                          child: CircleAvatar(
                            radius: 30, // Circle radius
                            backgroundColor: Colors.white,
                            child: Column(
                              children: [
                                Text(
                                  "Pay",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Avenir'),
                                ),
                                Text(
                                  "400%",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: blueButton,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Avenir'),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
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
                              fontFamily: 'Avenir'))
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
