



import 'dart:convert';

import 'package:bloc_newsapp/presentation/screens/general/categories/categories_model.dart';
import 'package:velocity_x/velocity_x.dart';

import '../data_source/remote/api_client.dart';
import '../data_source/remote/api_endpoints_url.dart';
import '../model/message_model.dart';

class CategoriesRepo extends ApiClient{


  CategoriesRepo();

//Get All Categories Api Function
  getAllCategories()async{
    try{

      final response = await getRequest(path: ApiEndpointsUrl.categories);
      if(response.statusCode == 200){
        final responseData = categoriesModelFromJson(jsonEncode(response.data));
        return responseData;
      }else{
        CategoriesModel();
      }

    }on Exception catch(e){
      Vx.log(e);
      CategoriesModel();
    }
    return CategoriesModel();
  }

  //Add New Categories Api Function
  Future<MessageModel>addNewCategories(String title,String slug)async{

    Map body ={
      "title":title,
      "slug":slug,
    };
    try{

      final response = await postRequest(path: ApiEndpointsUrl.addCategories,body: body,isTokenRequired: true);
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

  //Update Categories Api Function
  Future<MessageModel>updateCategories(String id,String title,String slug)async{

    Map body ={
      "id":id,
      "title":title,
      "slug":slug,
    };
    try{

      final response = await postRequest(path: ApiEndpointsUrl.updateCategories,body: body,isTokenRequired: true);
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


  //Delete Categories Api Function
  Future<MessageModel>deleteCategories(String id)async{

    try{

      final response = await postRequest(path: "${ApiEndpointsUrl.deleteCategories}/$id",isTokenRequired: true);
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