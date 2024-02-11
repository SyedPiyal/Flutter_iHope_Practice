
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuickAccessList extends StatefulWidget{
  const QuickAccessList({super.key});

  @override
  State<QuickAccessList> createState() => _QuickAccessList();

}

class _QuickAccessList extends State<QuickAccessList>{

  final List _data =[
    {"text": "Appointment","image": "assets/images/appointment.png"},
    {"text": "Consult Doctors","image": "assets/images/ConsDoctor.png"},
    {"text": "Institute","image": "assets/images/Institute.png"},
    {"text": "Health Package","image": "assets/images/healthPack.png"},

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (BuildContext context, int index){
        final data = _data[index];
        return Material(
          type: MaterialType.transparency,
          elevation: 6.0,
          color: Colors.transparent,
          child: InkWell(
            child: Column(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      /*image: DecorationImage(
                          fit: BoxFit.cover, image: AssetImage(data["image"])),*/
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xff115F6E),
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Image.asset(data["image"]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 7,left: 5),
                  child: Text(data["text"] ?? "",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),
                )
              ],
            ),
            onTap: (){
              setState(() {

                //_containerColor = Colors.redAccent;
              });
            },
          ),
        );
      },
      scrollDirection: Axis.horizontal,
    );
  }
}