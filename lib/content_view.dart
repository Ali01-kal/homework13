import 'package:flutter/material.dart';

class ContentView extends StatelessWidget{
  const ContentView({super.key,required this.imagePath});
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Padding(
         padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.all(Radius.circular(40.0)),
                
                             child:  Image.asset(imagePath,
                fit: BoxFit.cover),
              

                
                ),
              );
             

           
  }
}
