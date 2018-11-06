class Memento {
    private var state: String = ""
    
    
    init(_ state: String) {
        self.state = state
    }
    
    func getState() -> String {
        return self.state
    }
}

class StateOriginator {
    private var currentState: String = ""
    
    func set(state: String) {
        self.currentState = state
        print("Current state is: ", self.currentState)
    }
    
    func save() -> Memento {
        defer {
            print("save old state: ", self.currentState)
        }
        return Memento(self.currentState)
    }
    
    func restore(from memento: Memento?) -> String {
        self.currentState = memento?.getState() ?? self.currentState
        print("restore to old state: ", self.currentState)
        return self.currentState
    }
}

class StateCaretaker {
    private var oldStatesList: [Memento] = []
    
    func add(_ memento: Memento) {
        self.oldStatesList.append(memento)
    }
    
    func get() -> Memento? {
        return oldStatesList.removeLast()
    }
}

class Tester {
    static func test() {
        let orginator = StateOriginator()
        let caretacker = StateCaretaker()
        
        orginator.set(state: "State A")
        caretacker.add(orginator.save())
        orginator.set(state: "State B")
        caretacker.add(orginator.save())
        orginator.set(state: "State C")
        caretacker.add(orginator.save())
        orginator.restore(from: caretacker.get())
        orginator.restore(from: caretacker.get())
    }
}

Tester.test()
