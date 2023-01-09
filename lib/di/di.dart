import 'package:base_project/global_blocs/app_loading.dart';
import 'package:base_project/global_blocs/app_setting_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:base_project/common_widget/base/base_url.dart';
import 'package:base_project/data/dog_data/dog_remote.dart';
import 'package:base_project/repos/dog_repo.dart';

part 'di_module.dart';
part 'repo_module.dart';
part 'injection.dart';
part 'bloc_module.dart';
part 'remote_module.dart';

GetIt getIt = GetIt.instance;
