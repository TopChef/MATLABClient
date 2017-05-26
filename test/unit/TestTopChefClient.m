%%TestTopChefClient
% Contains unit tests for the client
classdef TestTopChefClient < matlab.unittest.TestCase
    properties
        url = 'http://dev/null.com'
    end
    
    methods (Test)
        function testConstructor(testCase)
            client = TopChefClient(testCase.url, 1);
            verifyClass(testCase, client, 'TopChefClient')
        end
    end
end