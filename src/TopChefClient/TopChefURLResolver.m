%% TopChefURLResolver
% Responsible for resolving URLs for the TopChef API. Provides a layer of
% abstraction between the TopChef client, and the TopChef API Routing Table
%
% Constructor Parameters
% ----------------------
%
%   url     The top-level URL where the API is located
classdef TopChefURLResolver
    properties
        baseURL
    end
    
    properties (Dependent)
        validatorEndpoint
    end
    
    methods
        %% Constructor
        % Takes in the base url. If necessary, the trailing forward slash
        % is stripped from it. The URL "http://www.google.com/" will thus
        % be stored as "http://www.google.com".
        function obj = TopChefURLResolver(url)
            obj.baseURL = url;
        end
        
        %% Base URL getter
        % Returns the base URL
        function url = get.baseURL(obj)
            url = obj.baseURL;
        end
        
        %% Base URL Setter
        % Set the URL to a new value. The value is stripped from it
        function obj = set.baseURL(obj, newURL)
            obj.baseURL = obj.stripLastSlash(newURL);
        end
        
        %% Validator Endpoint
        % Provides the endpoint for the JSON Schema validator
        function url = get.validatorEndpoint(obj)
            url = strcat(...
                obj.baseURL, ...
                '/validator'...
            );
        end
    end
    
    methods (Access = private, Static)
        %% stripLastSlash
        % If the string argument ends with a '/', remove it.
        function strippedURL = stripLastSlash(url)
            if url(end) == '/'
                strippedURL = url(1:(end - 1));
            else
                strippedURL = url;
            end
        end
    end
end