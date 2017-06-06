function [ does_experiment_match ] = AcceptanceTestExperimentRabi(url)
%ACCEPTANCETESTEXPERIMENTRABI Tests that the Rabi experiment is a valid
%JSON schema
% Parameters
% ==========

AssertClientLoaded();

import ca.uwaterloo.iqc.topchef.TopChefClient

schema = fileread(fullfile(pwd, 'experiment_schema.json'));
instance = '{"type": "RABI", "pulse_time": 0.1}';

client = TopChefClient(url);
validator = client.getJSONSchemaValidator();

does_experiment_match = validator.validate(instance, schema);

end

