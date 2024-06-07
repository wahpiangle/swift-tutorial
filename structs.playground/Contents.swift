struct DatabaseManager{
    
    private var serverName = "Server 1"
    
    func saveData(data:String) -> Bool {
        print(serverName + " is saving " + data)
        return true
    }
}

struct ChatView{
    var message = "Hello"
    func sendChat(){
        var db = DatabaseManager()
        let success = db.saveData(data: message)
    }
}
