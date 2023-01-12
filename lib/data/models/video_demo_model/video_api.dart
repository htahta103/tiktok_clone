import 'package:json_annotation/json_annotation.dart';
part 'video_api.g.dart';

@JsonSerializable()
class VideoDemoAPI {
  final String user;
  final String user_pic;
  final String video_title;
  final String song_name;
  final String likes;
  final String comments;
  final String url;

  VideoDemoAPI(
      {required this.user,
      required this.user_pic,
      required this.video_title,
      required this.song_name,
      required this.likes,
      required this.comments,
      required this.url});
  factory VideoDemoAPI.fromJson(Map<String, dynamic> json) =>
      _$VideoDemoAPIFromJson(json);
  Map<String, dynamic> toJson() => _$VideoDemoAPIToJson(this);
}
