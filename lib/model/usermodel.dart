import 'dart:convert';

// Function to parse JSON response
List<BusinessUser> businessUserFromJson(String str) =>
    List<BusinessUser>.from(json.decode(str).map((x) => BusinessUser.fromJson(x)));

// Function to convert object to JSON format
String businessUserToJson(List<BusinessUser> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BusinessUser {
  final int? id;
  final String companyName;
  final String contactPerson;
  final String email;
  final String phone;
  final String address;
  final String uploadedFile;

  BusinessUser({
    this.id,
    required this.companyName,
    required this.contactPerson,
    required this.email,
    required this.phone,
    required this.address,
    required this.uploadedFile,
  });

  factory BusinessUser.fromJson(Map<String, dynamic> json) => BusinessUser(
    id: json["id"],
    companyName: json["company_name"],
    contactPerson: json["contact_person"],
    email: json["email"],
    phone: json["phone"],
    address: json["address"],
    uploadedFile: json["uploaded_file"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "company_name": companyName,
    "contact_person": contactPerson,
    "email": email,
    "phone": phone,
    "address": address,
    "uploaded_file": uploadedFile,
  };

  // To help with updating profile locally
  BusinessUser copyWith({
    String? companyName,
    String? contactPerson,
    String? email,
    String? phone,
    String? address,
    String? uploadedFile,
  }) {
    return BusinessUser(
      id: this.id,
      companyName: companyName ?? this.companyName,
      contactPerson: contactPerson ?? this.contactPerson,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      address: address ?? this.address,
      uploadedFile: uploadedFile ?? this.uploadedFile,
    );
  }
}
