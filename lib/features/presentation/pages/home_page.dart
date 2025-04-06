import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pay_later/common/common.dart';
import 'package:pay_later/common/search_widget.dart';
import 'package:pay_later/features/presentation/widgets/product_card.dart';
import 'package:pay_later/helper/helper.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
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
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 18, horizontal: 35),
                                backgroundColor: blueButton),
                            child:  const Text(
                              "Activate Credit",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Axiforma'),
                            ),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: width>600?700:280,
                      child:
                          SearchWidget(controller: search, onChanged: (v) {})),
                  Container(
                    width: 50,
                    decoration: BoxDecoration(
                        color: grayBackground,
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset("assets/scan.png"),
                  )
                ],
              ),
            ),
           Container(
                height: width>600?240:400,
                // width:MediaQuery.of(context).size.width,
                color: grayBackground,
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 20, bottom: 20),
                child: GridView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: category1.length,

                  gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: width>600 ? 1 : 2,
                    crossAxisSpacing: 20,
                  mainAxisSpacing: 5,
                    childAspectRatio: 1.0,
                  ),
                  // physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context,i){
                    var product = category1[i];
                    return ProductCard(
                      imagePath: product['imagePath']!,
                      productName: product['productName']!,
                      price: product['price']!,
                      originalPrice: product['originalPrice']!,
                      iconText: product['iconText']!,
                      iconSubtext: product['iconSubtext']!,
                      iconImage: product['iconImage']!,
                      width:width
                    );
                  },
                ),
              ),

            Container(
              height: 400,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 20),
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
                              color: blueButton,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Avenir'),
                        ),
                      ],
                    ),
                  ),
                  width>600?SizedBox(height: 20):SizedBox(),
                  Expanded(
                    child: GridView.count(
                      primary: false,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: width>600?10:20,
                      crossAxisCount:width> 600?6: 4,
                      childAspectRatio: 1.0,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        _buildGridItem("assets/justrite.png", "Justrite",width),
                        _buildGridItem("assets/orile.png", "Orile Restaurant",width),
                        _buildGridItem("assets/slot.png", "Slot",width),
                        _buildGridItem("assets/point.png", "Pointek",width),
                        _buildGridItem("assets/ogabassey.png", "Ogabassey",width),
                        _buildGridItem("assets/cas.png", "Casper Store",width),
                        _buildGridItem("assets/dream.png", "Dreamworks",width),
                        _buildGridItem("assets/humb.png", "Hubmart",width),
                        _buildGridItem("assets/used.png", "Just Used",width),
                        _buildGridItem("assets/fones.png", "Just Fones",width),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildGridItem(String imagePath, String text, double width) {

    return Column(

      children: [
        // Image with BoxFit.contain to ensure no overflow
        Image.asset(
          imagePath,
          width: width>600?80.0:55, // You can adjust this width as needed
          height:  width>600?80.0:55, // You can adjust this height as needed
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
              overflow: TextOverflow.ellipsis),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
