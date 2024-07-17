import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String userId;
  String email;
  String username;
  String passwordHash;
  String profilePicture;
  String bio;
  List<String> followers;
  List<String> following;
  DateTime createdAt;
  DateTime updatedAt;

  User({
    required this.userId,
    required this.email,
    required this.username,
    required this.passwordHash,
    required this.profilePicture,
    required this.bio,
    required this.followers,
    required this.following,
    required this.createdAt,
    required this.updatedAt,
  });

  factory User.fromMap(Map<String, dynamic> data, String userId) {
    return User(
      userId: userId,
      email: data['email'],
      username: data['username'],
      passwordHash: data['passwordHash'],
      profilePicture: data['profilePicture'],
      bio: data['bio'],
      followers: List<String>.from(data['followers']),
      following: List<String>.from(data['following']),
      createdAt: (data['createdAt'] as Timestamp).toDate(),
      updatedAt: (data['updatedAt'] as Timestamp).toDate(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'username': username,
      'passwordHash': passwordHash,
      'profilePicture': profilePicture,
      'bio': bio,
      'followers': followers,
      'following': following,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }
}
