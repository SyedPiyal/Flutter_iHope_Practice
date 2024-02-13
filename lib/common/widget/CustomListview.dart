
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomListView extends StatefulWidget {

  const CustomListView({Key? key}) : super(key: key);

  @override
  State<CustomListView> createState() => _CustomListView();

}

class _CustomListView extends State<CustomListView>{

  final List _data =
  [
    {"text": "SGPT (Alanine Transaminase/ALT)"},
    {"text": "Alkaline Phosphatase (ALP)"},
    {"text": "TIBC (Total Iron Binding Capacity)"},
    {"text": "CCR-24 Hrs Urine (Creatinine Clearance)"},
    {"text": "eGFR (Epidermal Growth Factor Receptor)"},
    {"text": "a)Na + b)K + c)Cl - d) TC02"},
    {"text": "GFR (Glomerular Filtration Rate)"},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: _data.length ,
      itemBuilder: (BuildContext context, int index){
        final data = _data[index];
        return Material(
          type: MaterialType.transparency,
          elevation: 6.0,
          color: Colors.transparent,
          child: InkWell(
            child: Card(
              elevation: 3,
              child: Container(height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 7,left: 15,top: 12),
                  child: Text(data["text"],style: TextStyle(fontWeight: FontWeight.bold,),),
                ),
              ),
            ),
            onTap: (){
            },
          ),
        );
      },
    );
  }
}