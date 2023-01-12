// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideoDemoAPI _$VideoDemoAPIFromJson(Map<String, dynamic> json) => VideoDemoAPI(
      user: json['user'] as String,
      user_pic: json['user_pic'] as String,
      video_title: json['video_title'] as String,
      song_name: json['song_name'] as String,
      likes: json['likes'] as String,
      comments: json['comments'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$VideoDemoAPIToJson(VideoDemoAPI instance) =>
    <String, dynamic>{
      'user': instance.user,
      'user_pic': instance.user_pic,
      'video_title': instance.video_title,
      'song_name': instance.song_name,
      'likes': instance.likes,
      'comments': instance.comments,
      'url': instance.url,
    };
