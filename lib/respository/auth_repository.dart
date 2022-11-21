import 'package:flutter_mvvm_architecture/data/network/BaseApiServices.dart';
import 'package:flutter_mvvm_architecture/data/network/NetworkApiServices.dart';
import 'package:flutter_mvvm_architecture/res/app_url.dart';

class AuthRepository {
  BaseApiSerivce _apiSerivce = NetworkApiService();

  Future<dynamic> loginApi(dynamic data) async {
    try {
      dynamic response =
          await _apiSerivce.getPostApiResponse(AppUrl.loginEndPoint, data);
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> registerApi(dynamic data) async {
    try {
      dynamic response = await _apiSerivce.getPostApiResponse(
          AppUrl.registerApiEndPoint, data);
    } catch (e) {
      throw e;
    }
  }
}
