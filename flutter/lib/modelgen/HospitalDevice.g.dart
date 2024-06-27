import 'dart:convert';

class HospitalDevice {
  const HospitalDevice({
    this.hastaneId,
    required this.deviceId,
    required this.id,
  });

  factory HospitalDevice.fromMap(Map<String, dynamic> map) {
    return HospitalDevice(
      hastaneId: map['hastaneId'],
      deviceId: map['deviceId'],
      id: map['id'],
    );
  }

  factory HospitalDevice.fromJson(String source) => HospitalDevice.fromMap(json.decode(source));

  final String? hastaneId;

  final String deviceId;

  final String id;

  HospitalDevice copyWith({
    String? hastaneId,
    String? deviceId,
    String? id,
  }) {
    return HospitalDevice(
      hastaneId: hastaneId ?? this.hastaneId,
      deviceId: deviceId ?? this.deviceId,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'hastaneId': hastaneId,
      'deviceId': deviceId,
      'id': id,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is HospitalDevice && other.hastaneId == hastaneId && other.deviceId == deviceId && other.id == id;
  }

  @override
  int get hashCode {
    return hastaneId.hashCode ^ deviceId.hashCode ^ id.hashCode;
  }

  @override
  String toString() {
    return 'HospitalDevice(hastaneId: $hastaneId, deviceId: $deviceId, id: $id)';
  }
}
