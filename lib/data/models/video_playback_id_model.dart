class VideoPlaybackIdModel {
  String? policy;
  String? id;

  VideoPlaybackIdModel({this.policy, this.id});

  VideoPlaybackIdModel.fromJson(Map<String, dynamic> json) {
    policy = json['policy'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['policy'] = this.policy;
    data['id'] = this.id;
    return data;
  }
}
