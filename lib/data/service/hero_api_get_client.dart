library api_testing_flutter_kata;

import 'dart:convert';
import 'package:superhero_app/data/constants/c_api_url.dart';
import 'package:superhero_app/data/helper/h_get_api.dart';
import 'package:superhero_app/data/interface/i_api.dart';
import 'package:superhero_app/data/model/m_hero.dart';

class HeroApiGetClient with ApiGetHelper implements ApiInterfaceGet {
    String baseAddress;

    HeroApiGetClient({this.baseAddress});
  @override
  Future<List> getListInService() async {
    final response = await get('${ApiUrls.API}${ApiUrls.ROUTE_ALL}',this.baseAddress);
    print(response.body);
    final decoded = json.decode(response.body) as List;

    return decoded.map((jsonTask) => MHero.fromJson(jsonTask)).toList();
  }


}
