// import 'package:dio/dio.dart';
// import 'package:gligx_test/repository/server/response/details.dart';
//
// class ApiService {
//   var dio = Dio();
//
//   final baseUrl = "https://reqres.in/";
//
//   //ApiService() {
//     //   _dio = Dio(BaseOptions(
//     //    // baseUrl: baseUrl,
//     //   ));
//     //
//     //   initializeInterceptors();
//     // }
//
//     getRequest(String endPoint) async {
//       Response response;
//       try {
//         response = await dio.get(endPoint);
//         print("lllllllllllllll$response");
//       } on DioError catch (e) {
//         print(e.message);
//         throw Exception(e.message);
//       }
//       return response;
//     }
//
//     // initializeInterceptors() {
//     //   dio.interceptors
//     //       .add(InterceptorsWrapper(onError: (error, errorInterceptorHandler) {
//     //     print(error.message);
//     //   }, onRequest: (request, requestInterceptorHandler) {
//     //     print("${request.method} ${request.path}");
//     //   }, onResponse: (response, responseInterceptorHandler) {
//     //     print(response.data);
//     //   }));
//     // }
//   }
//
//
//
//
//
import 'package:dio/dio.dart';

class HttpService {
  Dio _dio = Dio();

  final baseUrl = "https://reqres.in/";

  Future<Response> getRequest(String endPoint) async {
    Response response;
    try {
      response = await _dio.get(baseUrl + endPoint);
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }
}
