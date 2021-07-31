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


/** This is an auto generated class representing the Donations type in your schema. */
@immutable
class Donations extends Model {
  static const classType = const _DonationsModelType();
  final String id;
  final String? _donorsID;
  final List<DonationsCampaigns>? _DonationsCampaigns;
  final String? _campaign;
  final String? _amount_paid;
  final TemporalDateTime? _date_time;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get donorsID {
    return _donorsID;
  }
  
  List<DonationsCampaigns>? get DonationsCampaigns {
    return _DonationsCampaigns;
  }
  
  String? get campaign {
    return _campaign;
  }
  
  String? get amount_paid {
    return _amount_paid;
  }
  
  TemporalDateTime? get date_time {
    return _date_time;
  }
  
  const Donations._internal({required this.id, donorsID, DonationsCampaigns, campaign, amount_paid, date_time}): _donorsID = donorsID, _DonationsCampaigns = DonationsCampaigns, _campaign = campaign, _amount_paid = amount_paid, _date_time = date_time;
  
  factory Donations({String? id, String? donorsID, List<DonationsCampaigns>? DonationsCampaigns, String? campaign, String? amount_paid, TemporalDateTime? date_time}) {
    return Donations._internal(
      id: id == null ? UUID.getUUID() : id,
      donorsID: donorsID,
      DonationsCampaigns: DonationsCampaigns != null ? List<DonationsCampaigns>.unmodifiable(DonationsCampaigns) : DonationsCampaigns,
      campaign: campaign,
      amount_paid: amount_paid,
      date_time: date_time);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Donations &&
      id == other.id &&
      _donorsID == other._donorsID &&
      DeepCollectionEquality().equals(_DonationsCampaigns, other._DonationsCampaigns) &&
      _campaign == other._campaign &&
      _amount_paid == other._amount_paid &&
      _date_time == other._date_time;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Donations {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("donorsID=" + "$_donorsID" + ", ");
    buffer.write("campaign=" + "$_campaign" + ", ");
    buffer.write("amount_paid=" + "$_amount_paid" + ", ");
    buffer.write("date_time=" + (_date_time != null ? _date_time!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Donations copyWith({String? id, String? donorsID, List<DonationsCampaigns>? DonationsCampaigns, String? campaign, String? amount_paid, TemporalDateTime? date_time}) {
    return Donations(
      id: id ?? this.id,
      donorsID: donorsID ?? this.donorsID,
      DonationsCampaigns: DonationsCampaigns ?? this.DonationsCampaigns,
      campaign: campaign ?? this.campaign,
      amount_paid: amount_paid ?? this.amount_paid,
      date_time: date_time ?? this.date_time);
  }
  
  Donations.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _donorsID = json['donorsID'],
      _DonationsCampaigns = json['DonationsCampaigns'] is List
        ? (json['DonationsCampaigns'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => DonationsCampaigns.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _campaign = json['campaign'],
      _amount_paid = json['amount_paid'],
      _date_time = json['date_time'] != null ? TemporalDateTime.fromString(json['date_time']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'donorsID': _donorsID, 'DonationsCampaigns': _DonationsCampaigns?.map((e) => e?.toJson())?.toList(), 'campaign': _campaign, 'amount_paid': _amount_paid, 'date_time': _date_time?.format()
  };

  static final QueryField ID = QueryField(fieldName: "donations.id");
  static final QueryField DONORSID = QueryField(fieldName: "donorsID");
  static final QueryField DONATIONSCAMPAIGNS = QueryField(
    fieldName: "DonationsCampaigns",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (DonationsCampaigns).toString()));
  static final QueryField CAMPAIGN = QueryField(fieldName: "campaign");
  static final QueryField AMOUNT_PAID = QueryField(fieldName: "amount_paid");
  static final QueryField DATE_TIME = QueryField(fieldName: "date_time");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Donations";
    modelSchemaDefinition.pluralName = "Donations";
    
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
      key: Donations.DONORSID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Donations.DONATIONSCAMPAIGNS,
      isRequired: false,
      ofModelName: (DonationsCampaigns).toString(),
      associatedKey: DonationsCampaigns.DONATIONS
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Donations.CAMPAIGN,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Donations.AMOUNT_PAID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Donations.DATE_TIME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _DonationsModelType extends ModelType<Donations> {
  const _DonationsModelType();
  
  @override
  Donations fromJson(Map<String, dynamic> jsonData) {
    return Donations.fromJson(jsonData);
  }
}