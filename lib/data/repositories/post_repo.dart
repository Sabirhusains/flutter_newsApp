
import 'dart:convert';

import 'package:bloc_newsapp/presentation/screens/general/profile/profile_model.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../presentation/screens/general/home/home_model.dart';
import '../data_source/remote/api_client.dart';
import '../data_source/remote/api_endpoints_url.dart';

class PostRepo extends ApiClient{


  PostRepo();


  Future<HomeModel>getAllPosts()async{
    try{

      final response = await getRequest(path: ApiEndpointsUrl.posts);
      if(response.statusCode == 200){
        final responseData = homeModelFromJson(jsonEncode(response.data));
        return responseData;
      }else{
        HomeModel();
      }

    }on Exception catch(e){
      Vx.log(e);
      HomeModel();
    }
    return HomeModel();
  }

  Future<ProfileModel>getUserPosts()async{
    try{

      final response = await getRequest(path: ApiEndpointsUrl.userPost,isTokenRequired: true);
      if(response.statusCode == 200){
        final responseData = profileModelFromJson(jsonEncode(response.data));
        return responseData;
      }else{
        ProfileModel();
      }

    }on Exception catch(e){
      Vx.log(e);
      ProfileModel();
    }
    return ProfileModel();
  }

}