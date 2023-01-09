import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:base_project/models/dog.dart';

import '../../common_widget/base/base_url.dart';
part 'dog_remote.g.dart';

@RestApi(
  parser: Parser.FlutterCompute,
)
abstract class DogRemote {
  factory DogRemote(Dio dio, {String baseUrl}) = _DogRemote;

  @GET(BASE_URL.DOG)
  Future<List<Dog>?> getDogs();
}

List<Dog> deserializeDogList(List<Map<String, dynamic>> json) =>
    json.map((e) => Dog.fromJson(e)).toList();
