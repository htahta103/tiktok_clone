// import 'dart:async';
// import 'dart:convert';
// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';

// // Must be top-level function
// // https://github.com/flutterchina/dio/blob/5e3eb797a4202b9aca0acc74d325c10523b79584/example/flutter_example/lib/main.dart#L16
// dynamic _parseAndDecode(String response) {
//   return jsonDecode(response);
// }

// Future<dynamic> parseJson(String text) {
//   return compute(_parseAndDecode, text);
// }

// class DioClient {
//   static FutureOr<Dio> setup() async {
//     final options = BaseOptions(
//       connectTimeout: BuildConfig.get().connectTimeout,
//       receiveTimeout: BuildConfig.get().receiveTimeout,
//       sendTimeout: 10000,
//       responseType: ResponseType.json,
//       contentType: 'application/json',
//       // validateStatus: (status) {
//       //   return true;
//       // },
//       baseUrl: BuildConfig.get().baseUrl,
//     );
//     final Dio dio = Dio(options);

//     /// Unified add authentication request header
//     dio.interceptors.add(AuthInterceptor());

//     /// Adapt data (according to your own data structure, you can choose to add it)
//     dio.interceptors.add(TokenInterceptor());

//     dio.interceptors.add(CacheInterceptor());

//     dio.interceptors.add(NetworkInterceptor());

//     (dio.transformer as DefaultTransformer).jsonDecodeCallback = parseJson;

//     /// Print Log (production mode removal)
//     if (BuildConfig.get().apiLog) {
//       dio.interceptors
//           .add(LogInterceptor(requestBody: true, responseBody: true));
//     }
//     return dio;
//   }

//   static FutureOr<Dio> setupSimpleDio() async {
//     final options = BaseOptions(
//       connectTimeout: BuildConfig.get().connectTimeout,
//       receiveTimeout: BuildConfig.get().receiveTimeout,
//       sendTimeout: 10000,
//       responseType: ResponseType.json,
//       contentType: 'application/json',
//     );
//     final Dio dio = Dio(options);

//     /// Print Log (production mode removal)
//     if (BuildConfig.get().apiLog) {
//       dio.interceptors
//           .add(LogInterceptor(requestBody: true, responseBody: true));
//     }
//     return dio;
//   }
// }
