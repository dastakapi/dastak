import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
service / on new http:Listener(9090) {

    resource function post auth/token(string grant_type, string ClientID, string ClientSecret, string scope) returns http:Response? {
        // AuthResponse auth = {"access_token": "dsdf", "expires_in": 3432432, "token_type": "Bearer", "scope": scope};
        http:Response response = new;
        response.setPayload({
            "access_token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c",
            "expires_in": 1800,
            "token_type": "Bearer",
            "scope": "aisp offline_access"
        }, "application/json");
        return response;
    }

    resource function get currencies() returns http:Response {
        http:Response response = new;
        response.setPayload({
            "Data": [
                {
                    "code": "AED",
                    "name": "United Arab Emirates dirham"
                },
                {
                    "code": "PKR",
                    "name": "Pakistan rupee"
                },
                {
                    "code": "AFN",
                    "name": "Afghan afghani"
                },
                {
                    "code": "ALL",
                    "name": "Albanian lek"
                },
                {
                    "code": "AMD",
                    "name": "Armenian dram"
                },
                {
                    "code": "ANG",
                    "name": "Netherlands Antillean guilder"
                },
                {
                    "code": "AOA",
                    "name": "Angolan kwanza"
                },
                {
                    "code": "AUD",
                    "name": "Australian dollar"
                },
                {
                    "code": "AWG",
                    "name": "Aruban florin"
                }
            ]
        }, "application/json");
        return response;
    }

    resource function get countries() returns http:Response {
        http:Response response = new;
        response.setPayload({
            "Data": [
                {
                    "code": "AE",
                    "name": "United Arab Emirates",
                    "update_start_time": 6
                },
                {
                    "code": "PK",
                    "name": "Pakistan",
                    "update_start_time": 6
                },
                {
                    "code": "SA",
                    "name": "Saudi Arabia",
                    "update_start_time": 6
                },
                {
                    "code": "EG",
                    "name": "Egypt",
                    "update_start_time": 6
                }
            ]
        }, "application/json");
        return response;
    }

    resource function get transactions(string accountId, string connectionId) returns http:Response {
        http:Response response = new;
        response.setPayload({
            "Data": [
                {
                    "AccountId": "1155666023001",
                    "TransactionId": "1155666023001",
                    "TransactionReference": "FAWRI+",
                    "CreditDebitIndicator": "Debit",
                    "Status": "Booked",
                    "BookingDateTime": "2022-07-22T00:00:00+03:00",
                    "ValueDateTime": "2022-07-22T00:00:00+03:00",
                    "Amount": {
                        "Amount": "-20.000",
                        "Currency": "PKR"
                    },
                    "Balance": {
                        "CreditDebitIndicator": "Credit",
                        "Amount": {
                            "Amount": "1980.000",
                            "Currency": "PKR"
                        }
                    },
                    "MerchantDetails": {}
                },
                {
                    "AccountId": "1155666023001",
                    "TransactionId": "1155666023002",
                    "TransactionReference": "ATM WITHDRAWAL",
                    "CreditDebitIndicator": "Debit",
                    "Status": "Booked",
                    "BookingDateTime": "2022-07-24T00:00:00+03:00",
                    "ValueDateTime": "2022-07-24T00:00:00+03:00",
                    "Amount": {
                        "Amount": "-200.000",
                        "Currency": "PKR"
                    },
                    "TransactionInformation": "24-07-2021 11-14-43",
                    "Balance": {
                        "CreditDebitIndicator": "Credit",
                        "Amount": {
                            "Amount": "1780.000",
                            "Currency": "PKR"
                        }
                    },
                    "MerchantDetails": {}
                }
            ]
        }, "application/json");
        return response;
    }

    resource function get accounts(string connectionId) returns http:Response {
        http:Response response = new;
        response.setPayload({
            "Data": [
                {
                    "AccountID": "861000191011",
                    "Currency": "PKR",
                    "AccountType": "Business",
                    "AccountSubType": "SavingsAccount",
                    "Nickname": "Saving Account 1",
                    "Status": "enabled",
                    "StatusUpdateDateTime": "2020-03-23T08:27:44.180+03:00",
                    "Balance": 10090344,
                    "OpeningDate": "2020-03-23T08:27:44.180+03:00",
                    "MaturityDate": "2020-03-23T08:27:44.180+03:00",
                    "Account": {
                        "Description": "SavingsAccount",
                        "Iban": "PK97ABCO86100019101101",
                        "Swift": "ABCOBHBM",
                        "AvailableBalance": 586828,
                        "OpeningBalance": 10090344,
                        "BlockedAmount": 9503516,
                        "HolderName": "Ali Hassan Mohammed"
                    },
                    "ConnectionID": "1122334455"
                },
                {
                    "AccountID": "861000191013",
                    "Currency": "PKR",
                    "AccountType": "Business",
                    "AccountSubType": "CurrentAccount",
                    "Nickname": "Current Account 1",
                    "Status": "disabled",
                    "StatusUpdateDateTime": "2020-03-23T08:27:44.180+03:00",
                    "Balance": 179911,
                    "OpeningDate": "2020-03-23T08:27:44.180+03:00",
                    "MaturityDate": "2020-03-23T08:27:44.180+03:00",
                    "Account": {
                        "Description": "CurrentAccount",
                        "Iban": "PK32ABCO86100019101301",
                        "SwiftBic": "ABCOBHBM",
                        "AvailableBalance": 179911,
                        "OpeningBalance": 179911,
                        "BlockedAmount": 0,
                        "HolderName": "Khalid Ahmed Ali"
                    },
                    "ConnectionID": "1122334455"
                }
            ]
        }, "application/json");
        return response;
    }

    resource function get account(string accountId, string connectionId) returns http:Response {
        http:Response response = new;
        response.setPayload({
            "Data": [
                {
                    "AccountID": "861000191011",
                    "Currency": "PKR",
                    "AccountType": "Business",
                    "AccountSubType": "SavingsAccount",
                    "Nickname": "Saving Account 1",
                    "Status": "enabled",
                    "StatusUpdateDateTime": "2020-03-23T08:27:44.180+03:00",
                    "Balance": 10090344,
                    "OpeningDate": "2020-03-23T08:27:44.180+03:00",
                    "MaturityDate": "2020-03-23T08:27:44.180+03:00",
                    "Account": {
                        "Description": "SavingsAccount",
                        "Iban": "PK97ABCO86100019101101",
                        "Swift": "ABCOBHBM",
                        "AvailableBalance": 586828,
                        "OpeningBalance": 10090344,
                        "BlockedAmount": 9503516,
                        "HolderName": "Ali Hassan Mohammed"
                    },
                    "ConnectionID": "1122334455"
                }
            ]
        }, "application/json");
        return response;
    }

    resource function get account_balances(string accountId, string connectionId) returns http:Response {
        http:Response response = new;
        response.setPayload({
            "Data": [
                {
                    "AccountId": "9990097349987",
                    "Amount": {
                        "Amount": "25469",
                        "Currency": "PKR"
                    },
                    "CreditDebitIndicator": "Credit",
                    "Type": "InterimAvailable",
                    "DateTime": "2021-05-16T00:00:01+00:00",
                    "CreditLine": [
                        {
                            "Included": false,
                            "Amount": {
                                "Amount": "0",
                                "Currency": "PKR"
                            }
                        }
                    ]
                }
            ]
        }, "application/json");
        return response;
    }

    resource function get connections(string userId, int page, int page_limit) returns http:Response {
        http:Response response = new;
        response.setPayload({
            "Data": [
                {
                    "ID": "1122334455",
                    "CountryCode": "XF",
                    "UserID": "123456789",
                    "UnattendedUpdates": false,
                    "LastConsentID": "5544332211",
                    "LastIntegrationConsentID": "3344334455",
                    "LastAttempt": {
                        "UserPresent": false,
                        "UnattendedUpdates": false,
                        "CreatedAt": "2022-04-15T12:28:04Z",
                        "CustomFields": {},
                        "DeviceType": "desktop",
                        "RemoteIp": "192.168.10.05",
                        "FailAt": null,
                        "FailErrorClass": null,
                        "FailMessage": null,
                        "Scopes": [
                            "accounts",
                            "transactions"
                        ],
                        "Finished": true,
                        "StartDate": null,
                        "ID": "6677889900",
                        "SuccessAt": "2022-04-15T12:28:04Z",
                        "EndDate": null,
                        "UpdatedAt": "2022-04-15T12:28:04Z",
                        "ConsentID": "5544332211",
                        "IncludeProducts": [
                            "account",
                            "card",
                            "bonus"
                        ]
                    },
                    "LastSuccessAt": "2022-04-15T12:28:04Z",
                    "InstitutionID": "1234",
                    "Institution": "model_bank",
                    "InstitutionName": "Model Bank",
                    "Status": "active",
                    "CreatedAt": "2022-04-14T13:08:04Z",
                    "UpdatedAt": "2022-04-15T12:28:04Z"
                },
                {
                    "ID": "1122334456",
                    "CountryCode": "XF",
                    "UserID": "123456787",
                    "UnattendedUpdates": false,
                    "LastConsentID": "5544332212",
                    "LastIntegrationConsentID": "3344334456",
                    "LastAttempt": {
                        "UserPresent": false,
                        "UnattendedUpdates": false,
                        "CreatedAt": "2022-04-15T12:28:04Z",
                        "CustomFields": {},
                        "DeviceType": "desktop",
                        "RemoteIp": "192.168.10.05",
                        "FailAt": null,
                        "FailErrorClass": null,
                        "FailMessage": null,
                        "Scopes": [
                            "accounts",
                            "transactions"
                        ],
                        "Finished": true,
                        "StartDate": null,
                        "ID": "6677889900",
                        "SuccessAt": "2022-04-15T12:28:04Z",
                        "EndDate": null,
                        "UpdatedAt": "2022-04-15T12:28:04Z",
                        "ConsentID": "5544332211",
                        "IncludeProducts": [
                            "account",
                            "card",
                            "bonus"
                        ]
                    },
                    "LastSuccessAt": "2022-04-15T12:28:04Z",
                    "InstitutionID": "1234",
                    "Institution": "model_bank",
                    "InstitutionName": "Model Bank",
                    "Status": "active",
                    "CreatedAt": "2022-04-14T13:08:04Z",
                    "UpdatedAt": "2022-04-15T12:28:04Z"
                }
            ],
            "Meta": {
                "CurrentPage": 1,
                "Limit": 5,
                "TotalCount": 11
            }
        }, "application/json");
        return response;
    }

    resource function get connection(string connectionId) returns http:Response {
        http:Response response = new;
        response.setPayload({
            "Data": {
                "ID": "1122334455",
                "CountryCode": "PK",
                "UserID": "123456789",
                "UnattendedUpdates": false,
                "LastConsentID": "5544332211",
                "LastIntegrationConsentID": "5544332233",
                "LastAttempt": {
                    "UserPresent": false,
                    "UnattendedUpdates": false,
                    "CreatedAt": "2020-05-07T16:14:53Z",
                    "CustomFields": {},
                    "DeviceType": "desktop",
                    "RemoteIp": "192.168.10.05",
                    "FailAt": null,
                    "FailErrorClass": null,
                    "FailMessage": null,
                    "Scopes": [
                        "accounts",
                        "transactions"
                    ],
                    "Finished": true,
                    "StartDate": null,
                    "ID": "6677889900",
                    "SuccessAt": "2020-06-02T16:16:19Z",
                    "EndDate": null,
                    "UpdatedAt": "2020-06-02T16:16:19Z",
                    "ConsentID": "5544332211",
                    "IncludeProducts": [
                        "account",
                        "card",
                        "bonus"
                    ]
                },
                "LastSuccessAt": "2020-06-02T16:16:19Z",
                "InstitutionID": "8c125f77-584e-4bee-9035-f602b6e0535a",
                "Institution": "ithmaar-bank",
                "InstitutionName": "Ithmaar Bank",
                "Status": "active",
                "CreatedAt": "2020-05-07T20:09:02Z",
                "UpdatedAt": "2020-06-02T09:41:23Z"
            }
        }, "application/json");
        return response;
    }

    resource function delete connection() returns http:Response {
        http:Response response = new;
        return response;
    }

    resource function get consents(string connectionId, string userId) returns http:Response {
        http:Response response = new;
        response.setPayload({
            "Data": [
                {
                    "ID": "5544332211",
                    "ConnectionID": "1122334455",
                    "UserID": "123456789",
                    "Scopes": [
                        "accounts",
                        "balances",
                        "transactions"
                    ],
                    "ValidUntil": "2022-06-14",
                    "ExpiresAt": "2022-06-14T10:08:04Z",
                    "StartDate": "2022-03-15",
                    "EndDate": null,
                    "CollectedBy": "client",
                    "IntegrationConsentID": "3336667890",
                    "RevokedAt": null,
                    "RevokeReason": null,
                    "CreatedAt": "2022-04-15T10:08:04Z",
                    "UpdatedAt": "2022-04-15T10:08:04Z"
                },
                {
                    "ID": "6644332211",
                    "ConnectionID": "2222334455",
                    "UserID": "123456888",
                    "Scopes": [
                        "accounts",
                        "balances",
                        "transactions"
                    ],
                    "ValidUntil": "2022-07-14",
                    "ExpiresAt": "2022-07-14T10:08:04Z",
                    "StartDate": "2022-05-15",
                    "EndDate": null,
                    "CollectedBy": "client",
                    "IntegrationConsentID": "1116667890",
                    "RevokedAt": null,
                    "RevokeReason": null,
                    "CreatedAt": "2022-05-15T10:08:04Z",
                    "UpdatedAt": "2022-05-15T10:08:04Z"
                }
            ]
        }, "application/json");

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

    resource function get institutions(string country_code) returns http:Response {
        http:Response response = new;
        response.setPayload({
            "Data": [
                {
                    "ID": "123",
                    "Institution": "modelbank_with_image",
                    "Name": "Model Bank with Image",
                    "Status": "active",
                    "UserInstruction": "Please fill in all the fields.",
                    "InstitutionURL": "http://example.com",
                    "LogoURL": "https://cdn.com/logos/institutions/xf/Model.svg",
                    "CountryCode": "XF",
                    "ConsentPeriodDays": 10,
                    "ScaDelay": 480,
                    "OptionalSca": true,
                    "LicenseRequired": false,
                    "HistoricalPeriodDays": 60,
                    "SupportedScopes": [
                        "accounts",
                        "transactions"
                    ],
                    "SupportedAccountProducts": [
                        "account",
                        "card"
                    ],
                    "SupportedAccountTypes": [
                        "personal"
                    ],
                    "RoutingNumbers": [
                        "123123"
                    ],
                    "SupportedAccountDetails": [],
                    "SupportedTransactionDetails": []
                },
                {
                    "ID": "456",
                    "Institution": "js_bank",
                    "Name": "JS Bank",
                    "Status": "active",
                    "UserInstruction": "Please fill in all the fields.",
                    "InstitutionURL": "http://jsbl.com",
                    "LogoURL": "https://connect.dastak.io/Bank_logo_midsize/jsbl.svg",
                    "CountryCode": "PK",
                    "ConsentPeriodDays": 10,
                    "ScaDelay": 0,
                    "OptionalSca": false,
                    "LicenseRequired": false,
                    "HistoricalPeriodDays": 90,
                    "SupportedScopes": [
                        "accounts"
                    ],
                    "SupportedAccountProducts": [
                        "account"
                    ],
                    "SupportedAccountTypes": [
                        "personal"
                    ],
                    "RoutingNumbers": [],
                    "SupportedAccountDetails": [
                        "account_name"
                    ],
                    "SupportedTransactionDetails": [
                        "original_amount",
                        "original_currency",
                        "posting_date"
                    ]
                }
            ]
        }, "application/json");
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
        response.setJsonPayload({
            "Data": [
                {
                    "UserID": "123456789",
                    "ClientUserIdentifier": "mohsin.termezy@dastak.io",
                    "Kyc": {
                        "FirstName": "Mohsin",
                        "LastName": "Termezy",
                        "OwnershipModel": "own",
                        "DateOfBirth": "1987-01-01",
                        "PlaceOfBirth": "Lahore",
                        "Gender": "male",
                        "Citizenship": "PK",
                        "ResidenceAddress": "Lahore , Pakistan",
                        "BusinessLegalName": "Dastak Accelerator",
                        "BusinessRegisteredOfficeCode": "PK",
                        "BusinessRegisteredOfficeAddress": "Lahore, Pakistan",
                        "BusinessRegistrationNumber": "254900FJRUPF31M3OT81"
                    },
                    "BlockedAt": null
                },
                {
                    "UserID": "987654321",
                    "ClientUserIdentifier": "arshad.quayyum@dastak.io",
                    "Kyc": {
                        "FirstName": "Arshad",
                        "LastName": "Quayyum",
                        "OwnershipModel": "own",
                        "DateOfBirth": "1985-02-01",
                        "PlaceOfBirth": "Karachi",
                        "Gender": "male",
                        "Citizenship": "PK",
                        "ResidenceAddress": "Karachi, Pakistan",
                        "BusinessLegalName": "Dastak Accelerator",
                        "BusinessRegisteredOfficeCode": "PK",
                        "BusinessRegisteredOfficeAddress": "Karachi, Pakistan",
                        "BusinessRegistrationNumber": "254900FJRUPF31M3OT84"
                    },
                    "BlockedAt": "2022-08-16T09:43:01Z"
                }
            ]
        }, "appplicaion/json");
        return response;
    }

    resource function get user(string user_id) returns http:Response {
        http:Response response = new;
        return response;
    }

    resource function get user_detauls(string user_id) returns http:Response {
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

