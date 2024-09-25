import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class MyUser {
  final String id;
  final String name;
  final List<String> images;
  final String bio;
  final String age;
  final List<String> matches;
  final List<String> requests;
  final int theme;
  final String avatar;

  MyUser({
    required this.id,
    required this.name,
    required this.images,
    required this.bio,
    required this.age,
    required this.matches,
    required this.requests,
    required this.theme,
    required this.avatar,
  });

  MyUser copyWith({
    String? id,
    String? name,
    List<String>? images,
    String? bio,
    String? age,
    List<String>? matches,
    List<String>? requests,
    int? theme,
    String? avatar,
  }) {
    return MyUser(
      id: id ?? this.id,
      name: name ?? this.name,
      images: images ?? this.images,
      bio: bio ?? this.bio,
      age: age ?? this.age,
      matches: matches ?? this.matches,
      requests: requests ?? this.requests,
      theme: theme ?? this.theme,
      avatar: avatar ?? this.avatar,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'images': images,
      'bio': bio,
      'age': age,
      'matches': matches,
      'requests': requests,
      'theme': theme,
      'avatar': avatar,
    };
  }
   Map<String, dynamic> toFirestoreMap() {
    return {
       
      'name': name,
      'images': images,
      'bio': bio,
      'age': age,
      'matches': matches,
      'requests': requests,
      'theme': theme,
      'avatar': avatar,
    };
  }

  factory MyUser.fromMap(Map<String, dynamic> map) {
    return MyUser(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      images: List<String>.from(map['images']),
      bio: map['bio'] ?? '',
      age: map['age'] ?? '',
      matches: List<String>.from(map['matches']),
      requests: List<String>.from(map['requests']),
      theme: map['theme']?.toInt() ?? 0,
      avatar: map['avatar'] ?? '',
    );
  }
  factory MyUser.fromFirestoreDoc(DocumentSnapshot map) {
    return MyUser(
      id: map.id,
      name: map['name'] ?? '',
      images: List<String>.from(map['images']),
      bio: map['bio'] ?? '',
      age: map['age'] ?? '',
      matches: List<String>.from(map['matches']),
      requests: List<String>.from(map['requests']),
      theme: map['theme']?.toInt() ?? 0,
      avatar: map['avatar'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory MyUser.fromJson(String source) => MyUser.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MyUser(id: $id, name: $name, images: $images, bio: $bio, age: $age, matches: $matches, requests: $requests, theme: $theme, avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is MyUser &&
      other.id == id &&
      other.name == name &&
      listEquals(other.images, images) &&
      other.bio == bio &&
      other.age == age &&
      listEquals(other.matches, matches) &&
      listEquals(other.requests, requests) &&
      other.theme == theme &&
      other.avatar == avatar;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      images.hashCode ^
      bio.hashCode ^
      age.hashCode ^
      matches.hashCode ^
      requests.hashCode ^
      theme.hashCode ^
      avatar.hashCode;
  }
}

MyUser testUser0 = MyUser(
    id: "MyUserid",
    name: "Test MyUser0",
    images: [],
    bio: "MyUser Bio",
    age: "32",
    matches: [],
    requests: [],
    theme: 0,
    avatar: "Default");
MyUser operatedTestUser = MyUser(
    id: "operatedid",
    name: "operatedTestMyUser",
    images: [],
    bio: "MyUser Bio",
    age: "32",
    matches: [],
    requests: [],
    theme: 0,
    avatar: "Default");
