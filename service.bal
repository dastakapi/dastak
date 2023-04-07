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

    resource function get transactions() returns http:Response {
        http:Response response = new;
        return response;
    }

    resource function get accounts() returns http:Response {
        http:Response response = new; 
        return response;
    }

    resource function get account() returns http:Response {
        http:Response response = new;
        return response;
    }

    resource function get account_balances() returns http:Response {
        http:Response response = new;
        return response;
    }

    resource function get connections() returns http:Response {
        http:Response response = new;
        return response;
    }

    resource function get connection() returns http:Response {
        http:Response response = new;
        return response;
    }

    resource function delete connection() returns http:Response {
        http:Response response = new;
        return response;
    }

    resource function get consents() returns http:Response {
        http:Response response = new;
        return response;
    }

    resource function get consent() returns http:Response {
        http:Response response = new;
        return response;
    }

    resource function put consent() returns http:Response {
        http:Response response = new;
        return response;
    }

    resource function get institutions() returns http:Response {
        http:Response response = new;
        return response;
    }

    resource function post auth_session() returns http:Response {
        http:Response response = new;
        return response;
    }

    resource function post test_auth_session() returns http:Response {
        http:Response response = new;
        return response;
    }

    resource function post users() returns http:Response {
        http:Response response = new;
        return response;
    }

    resource function get users() returns http:Response {
        http:Response response = new;
        return response;
    }

    resource function get user(string user_id) returns http:Response {
        http:Response response = new;
        return response;
    }

    resource function delete user(string user_id) returns http:Response {
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

