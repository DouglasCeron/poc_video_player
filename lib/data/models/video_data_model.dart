import 'package:poc_video_player/data/models/video_playback_id_model.dart';
import 'package:poc_video_player/data/models/video_tracks_model.dart';

class VideoDataModel {
  List<VideoTracksModel>? tracks;
  String? status;
  List<VideoPlaybackIdModel>? playbackIds;
  String? mp4Support;
  String? maxStoredResolution;
  double? maxStoredFrameRate;
  String? masterAccess;
  String? id;
  double? duration;
  String? createdAt;
  String? aspectRatio;

  VideoDataModel(
      {this.tracks,
      this.status,
      this.playbackIds,
      this.mp4Support,
      this.maxStoredResolution,
      this.maxStoredFrameRate,
      this.masterAccess,
      this.id,
      this.duration,
      this.createdAt,
      this.aspectRatio});

  VideoDataModel.fromJson(Map<String, dynamic> json) {
    if (json['tracks'] != null) {
      tracks = <VideoTracksModel>[];
      json['tracks'].forEach((v) {
        tracks!.add(new VideoTracksModel.fromJson(v));
      });
    }
    status = json['status'];
    if (json['playback_ids'] != null) {
      playbackIds = <VideoPlaybackIdModel>[];
      json['playback_ids'].forEach((v) {
        playbackIds!.add(new VideoPlaybackIdModel.fromJson(v));
      });
    }
    mp4Support = json['mp4_support'];
    maxStoredResolution = json['max_stored_resolution'];
    maxStoredFrameRate = json['max_stored_frame_rate'];
    masterAccess = json['master_access'];
    id = json['id'];
    duration = json['duration'];
    createdAt = json['created_at'];
    aspectRatio = json['aspect_ratio'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.tracks != null) {
      data['tracks'] = this.tracks!.map((v) => v.toJson()).toList();
    }
    data['status'] = this.status;
    if (this.playbackIds != null) {
      data['playback_ids'] = this.playbackIds!.map((v) => v.toJson()).toList();
    }
    data['mp4_support'] = this.mp4Support;
    data['max_stored_resolution'] = this.maxStoredResolution;
    data['max_stored_frame_rate'] = this.maxStoredFrameRate;
    data['master_access'] = this.masterAccess;
    data['id'] = this.id;
    data['duration'] = this.duration;
    data['created_at'] = this.createdAt;
    data['aspect_ratio'] = this.aspectRatio;
    return data;
  }
}
