import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:superhero_app/data/model/m_hero.dart';
import 'package:superhero_app/views/pages/details/s_details.dart';
import 'package:superhero_app/views/styles/s_constants.dart';


class Whero extends StatelessWidget{
  final MHero hero;

  Whero({this.hero});
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
        onTap: (){
            Get.to(SDetails(mhero: hero,));
        },
        child:Container(
            height: 130,
            width: 130,
            margin: EdgeInsets.all(10.0),
            decoration:DecorationConstants.decorationImgHero(hero.images.lg)
        )
    );
  }
}