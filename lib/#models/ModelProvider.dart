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

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'Campaigns.dart';
import 'Donations.dart';
import 'DonationsCampaigns.dart';
import 'Donors.dart';
import 'Recipients.dart';

export 'Campaigns.dart';
export 'Donations.dart';
export 'DonationsCampaigns.dart';
export 'Donors.dart';
export 'Recipients.dart';

class ModelProvider implements ModelProviderInterface {
  @override
  String version = "4668afb7d41dbc5cefd3199b7501b0db";
  @override
  List<ModelSchema> modelSchemas = [Campaigns.schema, Donations.schema, DonationsCampaigns.schema, Donors.schema, Recipients.schema];
  static final ModelProvider _instance = ModelProvider();

  static ModelProvider get instance => _instance;
  
  ModelType getModelTypeByModelName(String modelName) {
    switch(modelName) {
    case "Campaigns": {
    return Campaigns.classType;
    }
    break;
    case "Donations": {
    return Donations.classType;
    }
    break;
    case "DonationsCampaigns": {
    return DonationsCampaigns.classType;
    }
    break;
    case "Donors": {
    return Donors.classType;
    }
    break;
    case "Recipients": {
    return Recipients.classType;
    }
    break;
    default: {
    throw Exception("Failed to find model in model provider for model name: " + modelName);
    }
    }
  }
}