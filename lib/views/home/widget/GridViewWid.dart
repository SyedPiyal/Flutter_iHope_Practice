
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewWid extends StatefulWidget{
  const GridViewWid({super.key});

  @override
  State<GridViewWid> createState() => _GridView();

}

class _GridView extends State<GridViewWid>{
  final List _data =[
    {"text": "Doctor","image": "assets/images/doctor.png","color": Color(0xffE2F2FF)},
    {"text": "Ambulance","image": "assets/images/ambulance.png","color": Color(0xffFDDEE3)},
    {"text": "Health Care","image": "assets/images/health.png","color": Color(0xffDEE9FD)},
    {"text": "Phamacy","image": "assets/images/shop.png","color": Color(0xffFEEDE2)},

  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 10,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      children: List.generate(_data.length,(index) {
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
                    color: data["color"],
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Icon(data["image"],color: Colors.black,size: 50),
                        Image.asset(data["image"],width: 30,height: 30),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(data["text"],style: TextStyle(color: data["TextColor"],fontWeight: FontWeight.bold),),
                        const Text("Lorem Ipsum is simply & dummy text of the...")

                      ],
                    ),
                  ),
                )),onTap: (){
            setState(() {
              /*Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const DetailsActivty()));*/
            });
          },
          ),
        );
      }),
    );
  }
}