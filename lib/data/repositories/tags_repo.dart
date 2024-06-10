import 'dart:convert';

import 'package:velocity_x/velocity_x.dart';
import '../../presentation/screens/general/tags/tags_model.dart';
import '../data_source/remote/api_client.dart';
import '../data_source/remote/api_endpoints_url.dart';

class TagsRepo extends ApiClient{


  TagsRepo();


  getAllTags()async{
    try{

      final response = await getRequest(path: ApiEndpointsUrl.tags);
      if(response.statusCode == 200){
        final responseData = tagsModelFromJson(jsonEncode(response.data));
        return responseData;
      }else{
        TagsModel();
      }

    }on Exception catch(e){
      Vx.log(e);
      TagsModel();
    }
    return TagsModel();
  }

}