import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CreateCard extends StatelessWidget {
  final double weight;
  final double height;
  final String text;
  final String url;
  final double containerWeight;
  final double containerHeight;
  final double fontS;
  
  CreateCard(this.weight,this.height,this.text,this.url,this.containerWeight,this.containerHeight,this.fontS) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: weight,
      height: height,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
      
            ),
        elevation: 10,
        color: Color.fromRGBO(110, 94, 168, 0.9),
        child: Container(
          width: containerWeight,
          height: containerHeight,
          child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Container(
                padding: EdgeInsets.only(bottom:8),
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: fontS,
                    color: Colors.white  
                  ),
                  textAlign: TextAlign.center,),
              ),
              Container(
                width: containerWeight/0.7,
                height: containerHeight/0.7,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(url),
                    fit: BoxFit.cover
                  )
                ),
              )
            ]),
          ),
        ),
        
      );
    
  }
}