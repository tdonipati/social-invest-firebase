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


/** This is an auto generated class representing the Donors type in your schema. */
@immutable
class Donors extends Model {
  static const classType = const _DonorsModelType();
  final String id;
  final String? _first_name;
  final String? _last_name;
  final String? _stripe;
  final List<Donations>? _Donations;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get first_name {
    return _first_name;
  }
  
  String? get last_name {
    return _last_name;
  }
  
  String? get stripe {
    return _stripe;
  }
  
  List<Donations>? get Donations {
    return _Donations;
  }
  
  const Donors._internal({required this.id, first_name, last_name, stripe, Donations}): _first_name = first_name, _last_name = last_name, _stripe = stripe, _Donations = Donations;
  
  factory Donors({String? id, String? first_name, String? last_name, String? stripe, List<Donations>? Donations}) {
    return Donors._internal(
      id: id == null ? UUID.getUUID() : id,
      first_name: first_name,
      last_name: last_name,
      stripe: stripe,
      Donations: Donations != null ? List<Donations>.unmodifiable(Donations) : Donations);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Donors &&
      id == other.id &&
      _first_name == other._first_name &&
      _last_name == other._last_name &&
      _stripe == other._stripe &&
      DeepCollectionEquality().equals(_Donations, other._Donations);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Donors {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("first_name=" + "$_first_name" + ", ");
    buffer.write("last_name=" + "$_last_name" + ", ");
    buffer.write("stripe=" + "$_stripe");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Donors copyWith({String? id, String? first_name, String? last_name, String? stripe, List<Donations>? Donations}) {
    return Donors(
      id: id ?? this.id,
      first_name: first_name ?? this.first_name,
      last_name: last_name ?? this.last_name,
      stripe: stripe ?? this.stripe,
      Donations: Donations ?? this.Donations);
  }
  
  Donors.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _first_name = json['first_name'],
      _last_name = json['last_name'],
      _stripe = json['stripe'],
      _Donations = json['Donations'] is List
        ? (json['Donations'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Donations.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'first_name': _first_name, 'last_name': _last_name, 'stripe': _stripe, 'Donations': _Donations?.map((e) => e?.toJson())?.toList()
  };

  static final QueryField ID = QueryField(fieldName: "donors.id");
  static final QueryField FIRST_NAME = QueryField(fieldName: "first_name");
  static final QueryField LAST_NAME = QueryField(fieldName: "last_name");
  static final QueryField STRIPE = QueryField(fieldName: "stripe");
  static final QueryField DONATIONS = QueryField(
    fieldName: "Donations",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Donations).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Donors";
    modelSchemaDefinition.pluralName = "Donors";
    
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
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Donors.FIRST_NAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Donors.LAST_NAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Donors.STRIPE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Donors.DONATIONS,
      isRequired: false,
      ofModelName: (Donations).toString(),
      associatedKey: Donations.DONORSID
    ));
  });
}

class _DonorsModelType extends ModelType<Donors> {
  const _DonorsModelType();
  
  @override
  Donors fromJson(Map<String, dynamic> jsonData) {
    return Donors.fromJson(jsonData);
  }
}