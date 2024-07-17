import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  String postId;
  String postOwnerId;
  String postContent;
  String mediaUrl;
  List<String> likes;
  List<Comment> comments;
  DateTime createdAt;

  Post({
    required this.postId,
    required this.postOwnerId,
    required this.postContent,
    required this.mediaUrl,
    required this.likes,
    required this.comments,
    required this.createdAt,
  });

  factory Post.fromMap(Map<String, dynamic> data, String postId) {
    return Post(
      postId: postId,
      postOwnerId: data['postOwnerId'],
      postContent: data['postContent'],
      mediaUrl: data['mediaUrl'],
      likes: List<String>.from(data['likes']),
      comments: List<Comment>.from(
          data['comments'].map((comment) => Comment.fromMap(comment))),
      createdAt: (data['createdAt'] as Timestamp).toDate(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'postOwnerId': postOwnerId,
      'postContent': postContent,
      'mediaUrl': mediaUrl,
      'likes': likes,
      'comments': comments.map((comment) => comment.toMap()).toList(),
      'createdAt': createdAt,
    };
  }
}

class Comment {
  String commentId;
  String commentText;
  String commentedBy;
  DateTime commentedAt;

  Comment({
    required this.commentId,
    required this.commentText,
    required this.commentedBy,
    required this.commentedAt,
  });

  factory Comment.fromMap(Map<String, dynamic> data) {
    return Comment(
      commentId: data['commentId'],
      commentText: data['commentText'],
      commentedBy: data['commentedBy'],
      commentedAt: (data['commentedAt'] as Timestamp).toDate(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'commentId': commentId,
      'commentText': commentText,
      'commentedBy': commentedBy,
      'commentedAt': commentedAt,
    };
  }
}
