%% TopChefClient
% defines a client for consuming the TopChef API
classdef TopChefClient
    properties
        urlResolver
        pollingInterval
        pollingTimer
    end
    
    methods
        %% Construct the object
        %
        % Parameters
        % ----------
        % 
        %   url     The URL on which the API is located
        %
        function obj = TopChefClient(url, pollingInterval)
            obj.urlResolver = TopChefURLResolver(url);
            obj.pollingInterval = pollingInterval;
        end
        
        function resolver = get.urlResolver(obj)
            resolver = obj.urlResolver;
        end
        
    end
    
    methods (Access = private)
        %% contactServer
        % Let TopChef know that this client is alive and accepting
        % connections
        function contactServer(obj, service_uuid)
            webwrite(...
                obj.getEndpointForService(obj, service_uuid),...
                'Method', 'PUT'...                
            );
        end
    end
end