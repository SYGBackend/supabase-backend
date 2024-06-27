import 'dart:convert';

class Doctor {
  const Doctor({
    this.userId,
    required this.id,
    required this.createdAt,
  });

  factory Doctor.fromMap(Map<String, dynamic> map) {
    return Doctor(
      userId: map['userId'],
      id: map['id'],
      createdAt: DateTime.parse(map['created_at']),
    );
  }

  factory Doctor.fromJson(String source) => Doctor.fromMap(json.decode(source));

  final String? userId;

  final String id;

  final DateTime createdAt;

  Doctor copyWith({
    String? userId,
    String? id,
    DateTime? createdAt,
  }) {
    return Doctor(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'id': id,
      'created_at': createdAt.toIso8601String(),
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Doctor && other.userId == userId && other.id == id && other.createdAt == createdAt;
  }

  @override
  int get hashCode {
    return userId.hashCode ^ id.hashCode ^ createdAt.hashCode;
  }

  @override
  String toString() {
    return 'Doctor(userId: $userId, id: $id, createdAt: $createdAt)';
  }
}
