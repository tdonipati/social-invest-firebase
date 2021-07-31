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
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Recipients type in your schema. */
@immutable
class Recipients extends Model {
  static const classType = const _RecipientsModelType();
  final String id;
  final Campaigns? _Campaigns;
  final String? _first_name;
  final String? _last_name;
  final String? _payment_info;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  Campaigns? get Campaigns {
    return _Campaigns;
  }
  
  String? get first_name {
    return _first_name;
  }
  
  String? get last_name {
    return _last_name;
  }
  
  String? get payment_info {
    return _payment_info;
  }
  
  const Recipients._internal({required this.id, Campaigns, first_name, last_name, payment_info}): _Campaigns = Campaigns, _first_name = first_name, _last_name = last_name, _payment_info = payment_info;
  
  factory Recipients({String? id, Campaigns? Campaigns, String? first_name, String? last_name, String? payment_info}) {
    return Recipients._internal(
      id: id == null ? UUID.getUUID() : id,
      Campaigns: Campaigns,
      first_name: first_name,
      last_name: last_name,
      payment_info: payment_info);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Recipients &&
      id == other.id &&
      _Campaigns == other._Campaigns &&
      _first_name == other._first_name &&
      _last_name == other._last_name &&
      _payment_info == other._payment_info;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Recipients {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("Campaigns=" + (_Campaigns != null ? _Campaigns!.toString() : "null") + ", ");
    buffer.write("first_name=" + "$_first_name" + ", ");
    buffer.write("last_name=" + "$_last_name" + ", ");
    buffer.write("payment_info=" + "$_payment_info");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Recipients copyWith({String? id, Campaigns? Campaigns, String? first_name, String? last_name, String? payment_info}) {
    return Recipients(
      id: id ?? this.id,
      Campaigns: Campaigns ?? this.Campaigns,
      first_name: first_name ?? this.first_name,
      last_name: last_name ?? this.last_name,
      payment_info: payment_info ?? this.payment_info);
  }
  
  Recipients.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _Campaigns = json['Campaigns']?['serializedData'] != null
        ? Campaigns.fromJson(new Map<String, dynamic>.from(json['Campaigns']['serializedData']))
        : null,
      _first_name = json['first_name'],
      _last_name = json['last_name'],
      _payment_info = json['payment_info'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'Campaigns': _Campaigns?.toJson(), 'first_name': _first_name, 'last_name': _last_name, 'payment_info': _payment_info
  };

  static final QueryField ID = QueryField(fieldName: "recipients.id");
  static final QueryField CAMPAIGNS = QueryField(
    fieldName: "Campaigns",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Campaigns).toString()));
  static final QueryField FIRST_NAME = QueryField(fieldName: "first_name");
  static final QueryField LAST_NAME = QueryField(fieldName: "last_name");
  static final QueryField PAYMENT_INFO = QueryField(fieldName: "payment_info");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Recipients";
    modelSchemaDefinition.pluralName = "Recipients";
    
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
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: Recipients.CAMPAIGNS,
      isRequired: false,
      targetName: "recipientsCampaignsId",
      ofModelName: (Campaigns).toString()
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Recipients.FIRST_NAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Recipients.LAST_NAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Recipients.PAYMENT_INFO,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _RecipientsModelType extends ModelType<Recipients> {
  const _RecipientsModelType();
  
  @override
  Recipients fromJson(Map<String, dynamic> jsonData) {
    return Recipients.fromJson(jsonData);
  }
}