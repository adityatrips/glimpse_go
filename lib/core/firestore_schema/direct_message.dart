import 'package:cloud_firestore/cloud_firestore.dart';

class Message {
  String messageId;
  String senderId;
  String text;
  String mediaUrl;
  DateTime createdAt;

  Message({
    required this.messageId,
    required this.senderId,
    required this.text,
    required this.mediaUrl,
    required this.createdAt,
  });

  factory Message.fromMap(Map<String, dynamic> data) {
    return Message(
      messageId: data['messageId'],
      senderId: data['senderId'],
      text: data['text'],
      mediaUrl: data['mediaUrl'],
      createdAt: (data['createdAt'] as Timestamp).toDate(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'messageId': messageId,
      'senderId': senderId,
      'text': text,
      'mediaUrl': mediaUrl,
      'createdAt': createdAt,
    };
  }
}

class Chat {
  String chatId;
  List<String> participants;
  List<Message> messages;

  Chat({
    required this.chatId,
    required this.participants,
    required this.messages,
  });

  factory Chat.fromMap(Map<String, dynamic> data, String chatId) {
    return Chat(
      chatId: chatId,
      participants: List<String>.from(data['participants']),
      messages: List<Message>.from(
          data['messages'].map((message) => Message.fromMap(message))),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'participants': participants,
      'messages': messages.map((message) => message.toMap()).toList(),
    };
  }
}
