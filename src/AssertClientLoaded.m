function AssertClientLoaded()
%ASSERTCLIENTLOADED Throws an error if the client cannot be found

if ~IsClientLoaded()
    throw(MException(...
        'TopChef:NoClient', 'The client JAR could not be found'...
    ))
end

end

