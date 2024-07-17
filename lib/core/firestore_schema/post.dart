import 'package:cloud_firestore/cloud_firestore.dart';

class Story {
  String storyId;
  String mediaUrl;
  List<String> stickers;
  String text;
  String drawing;
  DateTime createdAt;
  DateTime expiresAt;

  Story({
    required this.storyId,
    required this.mediaUrl,
    required this.stickers,
    required this.text,
    required this.drawing,
    required this.createdAt,
    required this.expiresAt,
  });

  factory Story.fromMap(Map<String, dynamic> data, String storyId) {
    return Story(
      storyId: storyId,
      mediaUrl: data['mediaUrl'],
      stickers: List<String>.from(data['stickers']),
      text: data['text'],
      drawing: data['drawing'],
      createdAt: (data['createdAt'] as Timestamp).toDate(),
      expiresAt: (data['expiresAt'] as Timestamp).toDate(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'mediaUrl': mediaUrl,
      'stickers': stickers,
      'text': text,
      'drawing': drawing,
      'createdAt': createdAt,
      'expiresAt': expiresAt,
    };
  }
}
