/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// ignore_for_file: public_member_api_docs

import 'ModelProvider.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Campaigns type in your schema. */
@immutable
class Campaigns extends Model {
  static const classType = const _CampaignsModelType();
  final String id;
  final List<DonationsCampaigns>? _donationss;
  final String? _first_name;
  final String? _last_name;
  final String? _address;
  final String? _email;
  final String? _phone;
  final String? _description;
  final String? _monthly_expense;
  final String? _pictures;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  List<DonationsCampaigns>? get donationss {
    return _donationss;
  }
  
  String? get first_name {
    return _first_name;
  }
  
  String? get last_name {
    return _last_name;
  }
  
  String? get address {
    return _address;
  }
  
  String? get email {
    return _email;
  }
  
  String? get phone {
    return _phone;
  }
  
  String? get description {
    return _description;
  }
  
  String? get monthly_expense {
    return _monthly_expense;
  }
  
  String? get pictures {
    return _pictures;
  }
  
  const Campaigns._internal({required this.id, donationss, first_name, last_name, address, email, phone, description, monthly_expense, pictures}): _donationss = donationss, _first_name = first_name, _last_name = last_name, _address = address, _email = email, _phone = phone, _description = description, _monthly_expense = monthly_expense, _pictures = pictures;
  
  factory Campaigns({String? id, List<DonationsCampaigns>? donationss, String? first_name, String? last_name, String? address, String? email, String? phone, String? description, String? monthly_expense, String? pictures}) {
    return Campaigns._internal(
      id: id == null ? UUID.getUUID() : id,
      donationss: donationss != null ? List<DonationsCampaigns>.unmodifiable(donationss) : donationss,
      first_name: first_name,
      last_name: last_name,
      address: address,
      email: email,
      phone: phone,
      description: description,
      monthly_expense: monthly_expense,
      pictures: pictures);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Campaigns &&
      id == other.id &&
      DeepCollectionEquality().equals(_donationss, other._donationss) &&
      _first_name == other._first_name &&
      _last_name == other._last_name &&
      _address == other._address &&
      _email == other._email &&
      _phone == other._phone &&
      _description == other._description &&
      _monthly_expense == other._monthly_expense &&
      _pictures == other._pictures;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Campaigns {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("first_name=" + "$_first_name" + ", ");
    buffer.write("last_name=" + "$_last_name" + ", ");
    buffer.write("address=" + "$_address" + ", ");
    buffer.write("email=" + "$_email" + ", ");
    buffer.write("phone=" + "$_phone" + ", ");
    buffer.write("description=" + "$_description" + ", ");
    buffer.write("monthly_expense=" + "$_monthly_expense" + ", ");
    buffer.write("pictures=" + "$_pictures");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Campaigns copyWith({String? id, List<DonationsCampaigns>? donationss, String? first_name, String? last_name, String? address, String? email, String? phone, String? description, String? monthly_expense, String? pictures}) {
    return Campaigns(
      id: id ?? this.id,
      donationss: donationss ?? this.donationss,
      first_name: first_name ?? this.first_name,
      last_name: last_name ?? this.last_name,
      address: address ?? this.address,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      description: description ?? this.description,
      monthly_expense: monthly_expense ?? this.monthly_expense,
      pictures: pictures ?? this.pictures);
  }
  
  Campaigns.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _donationss = json['donationss'] is List
        ? (json['donationss'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => DonationsCampaigns.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _first_name = json['first_name'],
      _last_name = json['last_name'],
      _address = json['address'],
      _email = json['email'],
      _phone = json['phone'],
      _description = json['description'],
      _monthly_expense = json['monthly_expense'],
      _pictures = json['pictures'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'donationss': _donationss?.map((e) => e?.toJson())?.toList(), 'first_name': _first_name, 'last_name': _last_name, 'address': _address, 'email': _email, 'phone': _phone, 'description': _description, 'monthly_expense': _monthly_expense, 'pictures': _pictures
  };

  static final QueryField ID = QueryField(fieldName: "campaigns.id");
  static final QueryField DONATIONSS = QueryField(
    fieldName: "donationss",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (DonationsCampaigns).toString()));
  static final QueryField FIRST_NAME = QueryField(fieldName: "first_name");
  static final QueryField LAST_NAME = QueryField(fieldName: "last_name");
  static final QueryField ADDRESS = QueryField(fieldName: "address");
  static final QueryField EMAIL = QueryField(fieldName: "email");
  static final QueryField PHONE = QueryField(fieldName: "phone");
  static final QueryField DESCRIPTION = QueryField(fieldName: "description");
  static final QueryField MONTHLY_EXPENSE = QueryField(fieldName: "monthly_expense");
  static final QueryField PICTURES = QueryField(fieldName: "pictures");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Campaigns";
    modelSchemaDefinition.pluralName = "Campaigns";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Campaigns.DONATIONSS,
      isRequired: false,
      ofModelName: (DonationsCampaigns).toString(),
      associatedKey: DonationsCampaigns.CAMPAIGNS
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Campaigns.FIRST_NAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Campaigns.LAST_NAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Campaigns.ADDRESS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Campaigns.EMAIL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Campaigns.PHONE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Campaigns.DESCRIPTION,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Campaigns.MONTHLY_EXPENSE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Campaigns.PICTURES,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _CampaignsModelType extends ModelType<Campaigns> {
  const _CampaignsModelType();
  
  @override
  Campaigns fromJson(Map<String, dynamic> jsonData) {
    return Campaigns.fromJson(jsonData);
  }
}