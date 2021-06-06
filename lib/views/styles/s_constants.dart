import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class LayoutConstants{
  static final String backgroundImage = 'imagens/background.png';
  static final String logo_home = 'imagens/logo_home.png';
  static final String logo = 'imagens/logo.png';
  static final String email = 'email';
  static final String senha = 'senha';
  static final String login = 'entrar';
  static final String title = 'Seja bem vindo ao empresas';
}


class ColorsApp{
  static final colorAppBar = Colors.purple;
  static final colorBackground = Colors.black;
}


class DecorationConstants{

  static final BoxDecoration decorationBackground =  BoxDecoration(
    gradient: LinearGradient(
      begin:Alignment.topLeft,
      end:Alignment.bottomLeft,
      colors: [
        Colors.purple,
        Colors.black,
        Colors.black,
        Colors.black,
      ],
    ),

  );

  static final BoxDecoration decorationAleatorio = BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(150),
        topRight: Radius.circular(150),
      ),
    color: ColorsApp.colorAppBar,
    boxShadow: [
      BoxShadow(
        color:ColorsApp.colorAppBar,
        blurRadius: 4,
        offset: Offset(2, 4), // Shadow position
      ),
    ],

  );
  static final BoxDecoration decorationHome = BoxDecoration(

      image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
              LayoutConstants.backgroundImage)
      )
  );
   static  BoxDecoration  decorationImgHero(String img){
       return BoxDecoration(
         image: DecorationImage(
             fit: BoxFit.fill,
             image: CachedNetworkImageProvider(
                 img)
         ),
         color: Colors.white,
         borderRadius: BorderRadius.circular(20),
         boxShadow: [
           BoxShadow(
             color: Colors.black12,
             blurRadius: 4,
             offset: Offset(2, 4), // Shadow position
           ),
         ],
       );
   }
  static final BoxDecoration decorationTextField = BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Colors.black12,
        blurRadius: 4,
        offset: Offset(2, 4), // Shadow position
      ),
    ],
    borderRadius: BorderRadius.all(
        Radius.circular(4)
    ),
    color: ColorsApp.colorAppBar,
  );

}

class AppTextStyle {
  static final whiteRegular14 = TextStyle(
    color: Colors.white,
    fontSize: 14,
  );
  static final blackRegular14 = TextStyle(
    color: Colors.black,
    fontSize: 14,
  );


}