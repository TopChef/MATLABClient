function [ validator_is_up, validator_validates ] = TestValidator(api_url)
%TESTVALIDATOR Tests that a JSON schema validator works
%
% Parameters
% ==========
%
%   api_url   The URL to the topchef API
%
% Return Values
% =============
%
%   validator_is_up   returns True if the validator endpoint can be
%                     contacted
%   
%   validator_validates returns True if the validator works
AssertClientLoaded();

instance = '{}';
schema = '{"type": "object"}';

import ca.uwaterloo.iqc.topchef.TopChefClient

client = TopChefClient(api_url);
validator = client.getJSONSchemaValidator();

validator_is_up = validator.isEndpointUp();

validator_validates = validator.validate(instance, schema);

end
