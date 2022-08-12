import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../repository/server/api_repository.dart';
import '../repository/server/response/details.dart';

class UserProvider with ChangeNotifier {
  final HttpService _apiService = HttpService();
  userDetails() async {
    Response response;
    try {
      response = await _apiService.getRequest("api/users/2");
      if (response.statusCode == 200) {
        DetailsResponse apiResponse = DetailsResponse.fromJson(response.data);
        return apiResponse;
      } else {
        print("There is some problem status code not 200");
      }
    } catch (e) {
      Future.value();
    }
  }
}
