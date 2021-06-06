import 'package:flutter/material.dart';

import 'package:superhero_app/data/model/m_hero.dart';
import 'package:superhero_app/views/styles/s_constants.dart';



class SDetails extends StatelessWidget {
  MHero mhero;

  SDetails({this.mhero});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Detalhes"),
        backgroundColor: ColorsApp.colorAppBar,
      ),
      body:Container(
        width:MediaQuery.of(context).size.width,
          height:  MediaQuery.of(context).size.height,
          decoration:DecorationConstants.decorationBackground,
         child:Column(

           children:<Widget> [

             Container(
                 height: 130,
                 width: 130,
                 margin: EdgeInsets.all(10.0),
                 decoration:DecorationConstants.decorationImgHero(mhero.images.lg)
             ),
             Text(mhero.name,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
             Text(mhero.biography.fullName,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
             Text(mhero.appearance.gender,style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal),),


           ],
         )
      ) ,
    );  MaterialApp(
    ) ;
  }
}




