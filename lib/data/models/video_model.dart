import 'package:poc_video_player/data/models/video_data_model.dart';

class VideoModel {
  List<VideoDataModel>? data;

  VideoModel({this.data});

  VideoModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <VideoDataModel>[];
      json['data'].forEach((v) {
        data!.add(new VideoDataModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
