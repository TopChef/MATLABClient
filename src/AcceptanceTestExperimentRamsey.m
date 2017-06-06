function [ does_experiment_match ] = AcceptanceTestExperimentRamsey(url)
%ACCEPTANCETESTEXPERIMENTRAMSEY Tests that the Rabi experiment is a valid
%JSON schema
% Parameters
% ==========

AssertClientLoaded();

import ca.uwaterloo.iqc.topchef.TopChefClient

schema = fileread(fullfile(pwd, 'experiment_schema.json'));
instance = ['{"type": "RAMSEY", "pulse_time": 0.1, '...
    '"wait_time": 0.1, "pulse_phase": 0}'];

client = TopChefClient(url);
validator = client.getJSONSchemaValidator();

does_experiment_match = validator.validate(instance, schema);

end

