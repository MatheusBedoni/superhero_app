

import 'package:flutter_test/flutter_test.dart';
import 'package:superhero_app/data/constants/c_api_url.dart';
import 'package:superhero_app/data/interface/i_api.dart';
import 'package:superhero_app/data/service/hero_api_get_client.dart';

void main(){

  ApiInterfaceGet getheroApi = new HeroApiGetClient(baseAddress: ApiUrls.BASE_URL);
  test('deve retornar a lista',() async {

    final list = await getheroApi.getListInService();
    
    expect(list.isNotEmpty, equals(true));
  });

}