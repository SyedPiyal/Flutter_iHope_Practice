import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImageSlider extends StatefulWidget {
  final List<Map<String, String>> itemList;

  const ImageSlider({Key? key, required this.itemList}) : super(key: key);

  @override
  State<ImageSlider> createState() => _ImageSlider();
}

class _ImageSlider extends State<ImageSlider> {

  int myCurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: CarouselSlider.builder(
            itemCount: widget.itemList.length,
            itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
              Map<String, String> currentItem = widget.itemList[itemIndex];

              return Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff237B86),
                      Color(0xff02485B),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 60.0,
                        height: 60.0,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/profile1.png")),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 80.0,
                            height: 22.0,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(25)),
                            ),
                            child: const Text(
                              "12:30 PM",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            currentItem["name"]!,
                            style: const TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            currentItem["subName"]!,
                            style: const TextStyle(
                                color: Colors.white, fontWeight: FontWeight.w100),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("assets/images/icon.png",
                              height: 50, width: 50),
                          Image.asset("assets/images/dot.png",
                              height: 20, width: 20),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
            options: CarouselOptions(
              viewportFraction: 1,
              autoPlay: true,
              height: 110,
              autoPlayCurve: Curves.fastOutSlowIn,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayInterval: const Duration(seconds: 2),
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  myCurrentIndex = index;
                });
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Align(
            alignment: Alignment.center,
            child: AnimatedSmoothIndicator(
              activeIndex: myCurrentIndex,
              count: widget.itemList.length,
              effect: const WormEffect(
                dotHeight: 8,
                dotWidth: 8,
                spacing: 5,
                dotColor: Color(0xFFCED1D7),
                activeDotColor: Color(0xFF17609A),
                paintStyle: PaintingStyle.fill,
              ),
            ),
          ),
        ),
      ],
    );
  }
}