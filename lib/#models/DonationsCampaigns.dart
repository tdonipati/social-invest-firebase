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


/** This is an auto generated class representing the DonationsCampaigns type in your schema. */
@immutable
class DonationsCampaigns extends Model {
  static const classType = const _DonationsCampaignsModelType();
  final String id;
  final Donations? _donations;
  final Campaigns? _campaigns;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  Donations get donations {
    try {
      return _donations!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  Campaigns get campaigns {
    try {
      return _campaigns!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  const DonationsCampaigns._internal({required this.id, required donations, required campaigns}): _donations = donations, _campaigns = campaigns;
  
  factory DonationsCampaigns({String? id, required Donations donations, required Campaigns campaigns}) {
    return DonationsCampaigns._internal(
      id: id == null ? UUID.getUUID() : id,
      donations: donations,
      campaigns: campaigns);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DonationsCampaigns &&
      id == other.id &&
      _donations == other._donations &&
      _campaigns == other._campaigns;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("DonationsCampaigns {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("donations=" + (_donations != null ? _donations!.toString() : "null") + ", ");
    buffer.write("campaigns=" + (_campaigns != null ? _campaigns!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  DonationsCampaigns copyWith({String? id, Donations? donations, Campaigns? campaigns}) {
    return DonationsCampaigns(
      id: id ?? this.id,
      donations: donations ?? this.donations,
      campaigns: campaigns ?? this.campaigns);
  }
  
  DonationsCampaigns.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _donations = json['donations']?['serializedData'] != null
        ? Donations.fromJson(new Map<String, dynamic>.from(json['donations']['serializedData']))
        : null,
      _campaigns = json['campaigns']?['serializedData'] != null
        ? Campaigns.fromJson(new Map<String, dynamic>.from(json['campaigns']['serializedData']))
        : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'donations': _donations?.toJson(), 'campaigns': _campaigns?.toJson()
  };

  static final QueryField ID = QueryField(fieldName: "donationsCampaigns.id");
  static final QueryField DONATIONS = QueryField(
    fieldName: "donations",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Donations).toString()));
  static final QueryField CAMPAIGNS = QueryField(
    fieldName: "campaigns",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Campaigns).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "DonationsCampaigns";
    modelSchemaDefinition.pluralName = "DonationsCampaigns";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ]),
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
      key: DonationsCampaigns.DONATIONS,
      isRequired: true,
      targetName: "donationsID",
      ofModelName: (Donations).toString()
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: DonationsCampaigns.CAMPAIGNS,
      isRequired: true,
      targetName: "campaignsID",
      ofModelName: (Campaigns).toString()
    ));
  });
}

class _DonationsCampaignsModelType extends ModelType<DonationsCampaigns> {
  const _DonationsCampaignsModelType();
  
  @override
  DonationsCampaigns fromJson(Map<String, dynamic> jsonData) {
    return DonationsCampaigns.fromJson(jsonData);
  }
}