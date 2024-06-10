
import 'dart:convert';

import 'package:velocity_x/velocity_x.dart';

import '../../presentation/screens/auth/login/login_model.dart';
import '../data_source/remote/api_client.dart';
import '../data_source/remote/api_endpoints_url.dart';

class AuthRepo extends ApiClient{


  AuthRepo();


    Future<LoginModel>userLogin(String email,String password,context)async{
    Map body ={
      "email": email,
      "password": password,
    };
    try{

      final response = await postRequest(path: ApiEndpointsUrl.login,body: body);
      if(response.statusCode == 200){
        final responseData = loginModelFromJson(jsonEncode(response.data));
        return responseData;
      }else{
        LoginModel();
      }

    }on Exception catch(e){
      VxToast.show(context, msg: e.toString());
      LoginModel();
    }
    return LoginModel();
  }

}