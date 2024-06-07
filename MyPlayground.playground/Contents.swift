import UIKit

//functions
let number:Int = 123
print(number)

print(addAB(a: 1, b: 3))
print(addAB2(1,3))


func addAB(a: Int, b: Int) -> Int {
    return a + b
}

//unnamed parameter
func addAB2(_ a:Int, _ b:Int) -> Int{
    return a + b
}

// Struct
struct TestStruct{
    var message:String = "hello"
    var messageWithPrefix:String {
        return "Hello " + message
    }
    
    func sendMessage() -> String {
        return message;
    }
    
    func sendMessagePrefix() {
        print(messageWithPrefix)
    }
}

var test:TestStruct = TestStruct()
test.sendMessagePrefix()
test.message = "new message"
test.sendMessagePrefix()

