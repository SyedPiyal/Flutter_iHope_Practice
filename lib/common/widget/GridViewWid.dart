import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewWid extends StatefulWidget {
  final List<Color> colors;

  const GridViewWid({Key? key, required this.colors}) : super(key: key);

  @override
  State<GridViewWid> createState() => _GridView();
}

class _GridView extends State<GridViewWid> {
  final List<Map<String, dynamic>> _data = [
    {"text": "Doctor", "image": "assets/images/doctor.png"},
    {"text": "Ambulance", "image": "assets/images/ambulance.png"},
    {"text": "Health Care", "image": "assets/images/health.png"},
    {"text": "Pharmacy", "image": "assets/images/shop.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 10,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      children: List.generate(widget.colors.length, (index) {
        final data = _data[index];
        return Material(
          type: MaterialType.transparency,
          elevation: 6.0,
          color: Colors.transparent,
          child: InkWell(
            child: Card(
              child: Container(
                width: 160,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: widget.colors[index],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(data["image"], width: 30, height: 30),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        data["text"],
                        style: TextStyle(
                          color: data["TextColor"],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text("Lorem Ipsum is simply & dummy text of the...")
                    ],
                  ),
                ),
              ),
            ),
            onTap: () {
              setState(() {
                /*Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SelfTest()));*/
              });
            },
          ),
        );
      }),
    );
  }
}
