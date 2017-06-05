function PrepareClient( path_to_client_jar )
%PREPAREJAVAPATH Add the JavaClient JAR to the dynamic java path
%
% Parameters
% ==========
%
%    path_to_client_jar    the path to the JAR 
javaaddpath(path_to_client_jar);

end

