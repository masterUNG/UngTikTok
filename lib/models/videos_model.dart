import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class VideosModel {
  final String caption;
  final int commentcount;
  final String previewimage;
  final String profilepic;
  final int sharecount;
  final String songname;
  final String uid;
  final String username;
  final String videourl;
  VideosModel({
    required this.caption,
    required this.commentcount,
    required this.previewimage,
    required this.profilepic,
    required this.sharecount,
    required this.songname,
    required this.uid,
    required this.username,
    required this.videourl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caption': caption,
      'commentcount': commentcount,
      'previewimage': previewimage,
      'profilepic': profilepic,
      'sharecount': sharecount,
      'songname': songname,
      'uid': uid,
      'username': username,
      'videourl': videourl,
    };
  }

  factory VideosModel.fromMap(Map<String, dynamic> map) {
    return VideosModel(
      caption: (map['caption'] ?? '') as String,
      commentcount: (map['commentcount'] ?? 0) as int,
      previewimage: (map['previewimage'] ?? '') as String,
      profilepic: (map['profilepic'] ?? '') as String,
      sharecount: (map['sharecount'] ?? 0) as int,
      songname: (map['songname'] ?? '') as String,
      uid: (map['uid'] ?? '') as String,
      username: (map['username'] ?? '') as String,
      videourl: (map['videourl'] ?? '') as String,
    );
  }

  factory VideosModel.fromJson(String source) => VideosModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
