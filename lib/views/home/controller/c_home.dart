


import 'package:flutter/material.dart';
import 'package:superhero_app/data/interface/i_api.dart';
import 'package:get/get.dart';
import 'package:superhero_app/data/model/m_hero.dart';

class HomeInterface{
  Future<bool> getList() async{}
  MHero getByIndex(int index) {}
}

class HomeController extends GetxController implements HomeInterface{
  ApiInterfaceGet apiGetClient;
  TextEditingController ctrlSearch;
  List<MHero> list;
  List<MHero> searchListItems;


  HomeController({this.apiGetClient,this.list,this.searchListItems,this.ctrlSearch});

  @override
  void onInit() {
    getList();
    super.onInit();
  }



  @override
  Future<bool> getList() async{
    list = await apiGetClient.getListInService();
    update();
    return true;
  }

  @override
  MHero getByIndex(int index) {
    return list[index];
  }


}