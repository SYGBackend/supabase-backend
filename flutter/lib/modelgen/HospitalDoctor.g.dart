import 'dart:convert';

class HospitalDoctor {
  const HospitalDoctor({
    required this.id,
    this.hospitalId,
    this.doctorId,
  });

  factory HospitalDoctor.fromMap(Map<String, dynamic> map) {
    return HospitalDoctor(
      id: map['id'],
      hospitalId: map['hospitalId'],
      doctorId: map['doctorId'],
    );
  }

  factory HospitalDoctor.fromJson(String source) => HospitalDoctor.fromMap(json.decode(source));

  final String id;

  final String? hospitalId;

  final String? doctorId;

  HospitalDoctor copyWith({
    String? id,
    String? hospitalId,
    String? doctorId,
  }) {
    return HospitalDoctor(
      id: id ?? this.id,
      hospitalId: hospitalId ?? this.hospitalId,
      doctorId: doctorId ?? this.doctorId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'hospitalId': hospitalId,
      'doctorId': doctorId,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is HospitalDoctor && other.id == id && other.hospitalId == hospitalId && other.doctorId == doctorId;
  }

  @override
  int get hashCode {
    return id.hashCode ^ hospitalId.hashCode ^ doctorId.hashCode;
  }

  @override
  String toString() {
    return 'HospitalDoctor(id: $id, hospitalId: $hospitalId, doctorId: $doctorId)';
  }
}
