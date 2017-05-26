classdef TestTopChefURLResolver < matlab.unittest.TestCase
    %TESTTOPCHEFURLRESOLVER Contains unit tests for the URL resolver    
    properties
        pollingInterval = 10;
    end
    
    methods (Test)
        %% Test Resolver Constructor
        % Tests that the object can be constructed with the appropriate
        % arugments
        function testResolverConstructor(testCase)
            client = TopChefClient('http://dev/null', testCase.pollingInterval);
            resolver = client.urlResolver;
            testCase.verifyClass(resolver, 'TopChefURLResolver');
        end
    end
    
end

