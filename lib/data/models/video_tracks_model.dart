class VideoTracksModel {
  String? type;
  int? maxWidth;
  int? maxHeight;
  double? maxFrameRate;
  String? id;
  double? duration;
  int? maxChannels;
  String? maxChannelLayout;

  VideoTracksModel({this.type, this.maxWidth, this.maxHeight, this.maxFrameRate, this.id, this.duration, this.maxChannels, this.maxChannelLayout});

  VideoTracksModel.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    maxWidth = json['max_width'];
    maxHeight = json['max_height'];
    maxFrameRate = json['max_frame_rate'];
    id = json['id'];
    duration = json['duration'];
    maxChannels = json['max_channels'];
    maxChannelLayout = json['max_channel_layout'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['max_width'] = this.maxWidth;
    data['max_height'] = this.maxHeight;
    data['max_frame_rate'] = this.maxFrameRate;
    data['id'] = this.id;
    data['duration'] = this.duration;
    data['max_channels'] = this.maxChannels;
    data['max_channel_layout'] = this.maxChannelLayout;
    return data;
  }
}
