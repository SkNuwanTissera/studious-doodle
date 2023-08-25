import ballerina/http;
import ballerina/random;

# A service representing a network-accessible API
# bound to port `9090`.
service / on new http:Listener(9090) {
    resource function post nutrition(byte[] bytes) returns int|error? {
        int randomInteger = check random:createIntInRange(50, 500);
        return randomInteger;
    }   
}
