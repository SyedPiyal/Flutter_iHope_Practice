
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewWidget extends StatefulWidget{
  const GridViewWidget({super.key});

  @override
  State<GridViewWidget> createState() => _GridViewWidget();

}

class _GridViewWidget extends State<GridViewWidget>{
  final List _data =[
    {"text": "Upload Prescription","image": "assets/images/upload.png","color": Color(0xff115F6E),"TextColor": Color(0xffFFFFFF)},
    {"text": "All Self Test","image": "assets/images/test.png","color": Color(0xffCFDFE2),"TextColor": Color(0xff000000)},

  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 10,
      physics: const AlwaysScrollableScrollPhysics(),
      crossAxisCount: _data.length,
      children: List.generate(_data.length,(index) {
        final data = _data[index];
        return Material(
          type: MaterialType.transparency,
          elevation: 6.0,
          color: Colors.transparent,
          child: InkWell(
            child: Card(elevation: 10,
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
                        Image.asset(data["image"],width: 45,height: 45),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(data["text"],style: TextStyle(color: data["TextColor"],fontWeight: FontWeight.bold),)

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