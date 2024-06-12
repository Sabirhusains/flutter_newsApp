import 'dart:convert';

import 'package:bloc_newsapp/data/model/message_model.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../presentation/screens/general/tags/tags_model.dart';
import '../data_source/remote/api_client.dart';
import '../data_source/remote/api_endpoints_url.dart';

class TagsRepo extends ApiClient{


  TagsRepo();

//Get All Tag Api Function
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

  //Add New Tag Api Function
  Future<MessageModel>addNewTag(String title,String slug)async{

    Map body ={
      "title":title,
      "slug":slug,
    };
    try{

      final response = await postRequest(path: ApiEndpointsUrl.addTags,body: body,isTokenRequired: true);
      if(response.statusCode == 200){
        final responseData = messageModelFromJson(jsonEncode(response.data));
        return responseData;
      }else{
        MessageModel();
      }

    }on Exception catch(e){
      Vx.log(e);
      MessageModel();
    }
    return MessageModel();
  }

  //Update Tag Api Function
  Future<MessageModel>updateTag(String id,String title,String slug)async{

    Map body ={
      "id":id,
      "title":title,
      "slug":slug,
    };
    try{

      final response = await postRequest(path: ApiEndpointsUrl.updateTags,body: body,isTokenRequired: true);
      if(response.statusCode == 200){
        final responseData = messageModelFromJson(jsonEncode(response.data));
        return responseData;
      }else{
        MessageModel();
      }

    }on Exception catch(e){
      Vx.log(e);
      MessageModel();
    }
    return MessageModel();
  }


  //Delete Tag Api Function
  Future<MessageModel>deleteTag(String id)async{

    try{

      final response = await postRequest(path: "${ApiEndpointsUrl.deleteTags}/$id",isTokenRequired: true);
      if(response.statusCode == 200){
        final responseData = messageModelFromJson(jsonEncode(response.data));
        return responseData;
      }else{
        MessageModel();
      }

    }on Exception catch(e){
      Vx.log(e);
      MessageModel();
    }
    return MessageModel();
  }

}