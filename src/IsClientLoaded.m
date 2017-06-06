function [ is_client_loaded ] = IsClientLoaded()
%IsClientLoaded Checks if ca.uwaterloo.iqc.topchef.TopChefClient is
%importable
%   Detailed explanation goes here
import ca.uwaterloo.iqc.topchef.TopChefClient

try
    TopChefClient('http://localhost');
    is_client_loaded = true;
catch    
    is_client_loaded = false;
end

