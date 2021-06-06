import 'package:flutter/material.dart';
import 'package:superhero_app/views/widgets/w_hero.dart';


class WheroList extends StatelessWidget{
  final List listHero;

  WheroList({this.listHero});
  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child:Container(
          child: new GridView.count(
            crossAxisCount: 3,
            children: List.generate(listHero.length, (index) {
              return new Whero(hero:listHero[index] );
            }),
          )
      )
    )
    ;

  }


}