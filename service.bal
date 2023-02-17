import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }

    resource function post auth/token(string grant_type, string ClientID, string ClientSecret, string scope) returns AuthResponse|error? {
        AuthResponse auth = {"access_token":"dsdf","expires_in":3432432,"token_type":"Bearer","scope":scope};
        return auth ;
    }
}

public type AuthResponse record {|
    string access_token;
    decimal expires_in;
    string token_type;
    string scope;
|};

