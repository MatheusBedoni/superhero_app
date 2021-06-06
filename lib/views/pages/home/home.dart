import 'dart:math';

import 'package:flutter/material.dart';
import 'package:superhero_app/data/constants/c_api_url.dart';
import 'package:superhero_app/data/service/hero_api_get_client.dart';
import 'package:superhero_app/views/pages/details/s_details.dart';
import 'package:superhero_app/views/pages/home/controller/c_home.dart';
import 'package:superhero_app/views/styles/s_constants.dart';
import 'package:superhero_app/views/widgets/w_hero_list.dart';
import 'package:get/get.dart';


class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();


}

class MyHomePageState extends State<MyHomePage> {
  var homeController = Get.put(HomeController(ctrlSearch: new TextEditingController(), apiGetClient: new HeroApiGetClient(baseAddress:ApiUrls.BASE_URL),list: []));
  bool isSearch = false;
  String searchText = "";


  ListenerController() {
    homeController.ctrlSearch.addListener(() {
      if (homeController.ctrlSearch.text.isEmpty) {
        setState(() {
          isSearch = false;
          searchText = "";
        });
      } else {
        setState(() {
         isSearch = true;
          searchText = homeController.ctrlSearch.text;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    ListenerController();
    return Scaffold(
     backgroundColor: ColorsApp.colorAppBar,
     body:SafeArea(

       child:Container(
           height:  MediaQuery.of(context).size.height,
           decoration:DecorationConstants.decorationBackground,
           child:Stack(
             children: [
               Column(
                 children: <Widget>[
                   Container(
                     padding:  EdgeInsets.all(15.0),
                     decoration: DecorationConstants.decorationTextField,
                     child:TextField(
                       controller: homeController.ctrlSearch,
                       decoration:  InputDecoration(fillColor: Colors.white,
                         hintText: 'Procure',
                         hintStyle: TextStyle(color:Colors.white),
                         icon:  IconButton(
                           icon: Icon(Icons.search),
                           color: Colors.white,
                           onPressed: (){  print('');
                           },
                         ),),

                     ),
                   ),
                   isSearch == false ?
                   GetBuilder<HomeController>(
                     builder: (_) =>
                         WheroList(listHero: homeController.list,),

                   ):
                   SearchListView()
                 ],
               ),

               Positioned(bottom: 0,
                   left:   MediaQuery
                       .of(context)
                       .size
                       .width/2.5 ,
                   child:GestureDetector(
                     onTap: (){
                       gerarPersonagemAleatorio();
                     },
                     child:Container(
                         height: 50,
                         width: 80,
                         decoration:  DecorationConstants.decorationAleatorio,
                         child:Icon(Icons.help)
                     )
                   ) )
             ],
           )
       ) ,
     )
    );

  }

  @override
  Widget SearchListView() {
    homeController.searchListItems = [];
    if(homeController.list != null){
      for (int i = 0; i < homeController.list.length; i++) {
        var item = homeController.list[i];

        if (item.name.toLowerCase().contains(homeController.ctrlSearch.text.toLowerCase())) {
          homeController.searchListItems.add(item);
        }
      }
      return WheroList(listHero: homeController.searchListItems);
    }else{
      Container();
    }

  }

  void gerarPersonagemAleatorio(){
    var rng = new Random();
    int numeroAleatorio = rng.nextInt(homeController.list.length);

    Get.to(SDetails(mhero:homeController.getByIndex(numeroAleatorio)));


  }


}
