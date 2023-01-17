import 'package:tiktok_clone/data/repos/video_repo.dart';
import 'package:tiktok_clone/data/remote_model/video/video_remote.dart';
import 'package:tiktok_clone/data/use_cases/video_use_case.dart';
import 'package:tiktok_clone/global_blocs/app_loading.dart';
import 'package:tiktok_clone/global_blocs/app_setting_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

part 'di_module.dart';
part 'repo_module.dart';
part 'injection.dart';
part 'bloc_module.dart';
part 'remote_module.dart';
part 'use_case_module.dart';

GetIt getIt = GetIt.instance;
