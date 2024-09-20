import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class User {
  final String id;
  final String name;
  final String email;
  final String bio;
  final String age;
  final List<String> matches;
  final List<String> requests;
  final int theme;
  final String avatar;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.bio,
    required this.age,
    required this.matches,
    required this.requests,
    required this.theme,
    required this.avatar,
  });

  User copyWith({
    String? id,
    String? name,
    String? email,
    String? bio,
    String? age,
    List<String>? matches,
    List<String>? requests,
    int? theme,
    String? avatar,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
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
      'email': email,
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
      'email': email,
      'bio': bio,
      'age': age,
      'matches': matches,
      'requests': requests,
      'theme': theme,
      'avatar': avatar,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      bio: map['bio'] ?? '',
      age: map['age'] ?? '',
      matches: List<String>.from(map['matches']),
      requests: List<String>.from(map['requests']),
      theme: map['theme']?.toInt() ?? 0,
      avatar: map['avatar'] ?? '',
    );
  }
  factory User.fromFirestoreDoc(DocumentSnapshot map) {
    return User(
      id: map.id,
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      bio: map['bio'] ?? '',
      age: map['age'] ?? '',
      matches: List<String>.from(map['matches']),
      requests: List<String>.from(map['requests']),
      theme: map['theme']?.toInt() ?? 0,
      avatar: map['avatar'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, bio: $bio, age: $age, matches: $matches, requests: $requests, theme: $theme, avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.id == id &&
        other.name == name &&
        other.email == email &&
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
        email.hashCode ^
        bio.hashCode ^
        age.hashCode ^
        matches.hashCode ^
        requests.hashCode ^
        theme.hashCode ^
        avatar.hashCode;
  }
}

User testUser0 = User(
    id: "userid",
    name: "Test User0",
    email: "email@mail.com",
    bio: "User Bio",
    age: "32",
    matches: [],
    requests: [],
    theme: 0,
    avatar: "Default");
User operatedTestUser = User(
    id: "operatedid",
    name: "operatedTestUser",
    email: "email@mail.com",
    bio: "User Bio",
    age: "32",
    matches: [],
    requests: [],
    theme: 0,
    avatar: "Default");