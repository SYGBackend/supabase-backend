import 'dart:convert';

class Appointment {
  const Appointment({
    this.patientid,
    this.agentid,
    this.createdDate,
    required this.id,
    this.doctorid,
    this.protocolNo,
  });

  factory Appointment.fromMap(Map<String, dynamic> map) {
    return Appointment(
      patientid: map['patientid'],
      agentid: map['agentid'],
      createdDate: DateTime.tryParse(map['created_date'] ?? ""),
      id: map['id'],
      doctorid: map['doctorid'],
      protocolNo: map['protocol_no'],
    );
  }

  factory Appointment.fromJson(String source) => Appointment.fromMap(json.decode(source));

  final String? patientid;

  final String? agentid;

  final DateTime? createdDate;

  final String id;

  final String? doctorid;

  final String? protocolNo;

  Appointment copyWith({
    String? patientid,
    String? agentid,
    DateTime? createdDate,
    String? id,
    String? doctorid,
    String? protocolNo,
  }) {
    return Appointment(
      patientid: patientid ?? this.patientid,
      agentid: agentid ?? this.agentid,
      createdDate: createdDate ?? this.createdDate,
      id: id ?? this.id,
      doctorid: doctorid ?? this.doctorid,
      protocolNo: protocolNo ?? this.protocolNo,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'patientid': patientid,
      'agentid': agentid,
      'created_date': createdDate?.toIso8601String(),
      'id': id,
      'doctorid': doctorid,
      'protocol_no': protocolNo,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Appointment &&
        other.patientid == patientid &&
        other.agentid == agentid &&
        other.createdDate == createdDate &&
        other.id == id &&
        other.doctorid == doctorid &&
        other.protocolNo == protocolNo;
  }

  @override
  int get hashCode {
    return patientid.hashCode ^
        agentid.hashCode ^
        createdDate.hashCode ^
        id.hashCode ^
        doctorid.hashCode ^
        protocolNo.hashCode;
  }

  @override
  String toString() {
    return 'Appointment(patientid: $patientid, agentid: $agentid, createdDate: $createdDate, id: $id, doctorid: $doctorid, protocolNo: $protocolNo)';
  }
}
