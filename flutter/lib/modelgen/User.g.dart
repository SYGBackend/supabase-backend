import 'dart:convert';

class User {
  const User({
    this.surname,
    this.roleId,
    required this.active,
    this.telephone,
    this.eMail,
    required this.userId,
    this.name,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      surname: map['surname'],
      roleId: map['role_id'],
      active: map['active'],
      telephone: map['telephone'],
      eMail: map['e_mail'],
      userId: map['user_id'],
      name: map['name'],
    );
  }

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  final String? surname;

  final String? roleId;

  final bool active;

  final String? telephone;

  final String? eMail;

  final String userId;

  final String? name;

  User copyWith({
    String? surname,
    String? roleId,
    bool? active,
    String? telephone,
    String? eMail,
    String? userId,
    String? name,
  }) {
    return User(
      surname: surname ?? this.surname,
      roleId: roleId ?? this.roleId,
      active: active ?? this.active,
      telephone: telephone ?? this.telephone,
      eMail: eMail ?? this.eMail,
      userId: userId ?? this.userId,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'surname': surname,
      'role_id': roleId,
      'active': active,
      'telephone': telephone,
      'e_mail': eMail,
      'user_id': userId,
      'name': name,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.surname == surname &&
        other.roleId == roleId &&
        other.active == active &&
        other.telephone == telephone &&
        other.eMail == eMail &&
        other.userId == userId &&
        other.name == name;
  }

  @override
  int get hashCode {
    return surname.hashCode ^
        roleId.hashCode ^
        active.hashCode ^
        telephone.hashCode ^
        eMail.hashCode ^
        userId.hashCode ^
        name.hashCode;
  }

  @override
  String toString() {
    return 'User(surname: $surname, roleId: $roleId, active: $active, telephone: $telephone, eMail: $eMail, userId: $userId, name: $name)';
  }
}
