import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
service / on new http:Listener(9090) {

    resource function post auth/token(string grant_type, string ClientID, string ClientSecret, string scope) returns http:Response? {
        AuthResponse auth = {"access_token": "dsdf", "expires_in": 3432432, "token_type": "Bearer", "scope": scope};
        http:Response response = new;
        response.setPayload(auth);
        return response;
    }

    resource function get currencies() returns http:Response {
        http:Response response = new;
        return response;
    }

    resource function get countries() returns http:Response {
        http:Response response = new;
        return response;
    }

}

public type AuthResponse record {|
    string access_token;
    decimal expires_in;
    string token_type;
    string scope;
|};

