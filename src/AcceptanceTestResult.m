function [ does_experiment_match ] = AcceptanceTestResult(url)
%ACCEPTANCETESTEXPERIMENTRESULT Tests that the Result is a valid match of
%the result schema
% Parameters
% ==========
%   url         The URL to the API

AssertClientLoaded();

import ca.uwaterloo.iqc.topchef.TopChefClient

schema = fileread(fullfile(pwd, 'result_schema.json'));
instance = '{"light_count": 1000, "dark_count": 100, "result_count": 253}';

client = TopChefClient(url);
validator = client.getJSONSchemaValidator();

does_experiment_match = validator.validate(instance, schema);

end
