import 'package:base_project/data/dog_data/dog_remote.dart';

import '../models/dog.dart';

abstract class DogRepo {
  Future<List<Dog>> getDogs();
}

class DogRepoImp with DogRepo {
  final DogRemote dogRemote;
  DogRepoImp({required this.dogRemote});

  @override
  Future<List<Dog>> getDogs() async {
    try {
      var res = await dogRemote.getDogs();
      return res ?? [];
    } catch (e) {
      return [];
    }
  }
}
