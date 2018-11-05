protocol Employee {
    var name: String { get set }
    var title: String { get set }
}

class Leaf: Employee{
    internal var name: String
    internal var title: String
    
    init(_ name: String, title: String) {
        self.name = name
        self.title = title
    }
}

class Composite: Employee {
    internal var group: [Employee] = []
    internal var name: String
    internal var title: String
    
    init(_ name: String, title: String) {
        self.name = name
        self.title = title
    }
    
    func manage(_ employee: Employee){
        group.append(employee)
    }
    
    func printGroup() -> String{
        let text: String = group.map{ $0.name + " who is " + $0.title }.joined(separator: ", ")
        let finalText = name + " with title " + title + " manages " + text
        return finalText
    }
}

class Manager: Composite {
    
    init(_ name: String) {
        super.init(name, title: "Manager")
        self.name = name
    }
}

class TeamLeader: Composite {
    init(_ name: String) {
        super.init(name, title: "Team Leader")
        self.name = name
    }
}

class SeniorDeveloper: Composite {
    init(_ name: String) {
        super.init(name, title: "Senior Developer")
        self.name = name
    }
}

class Developer: Leaf {
    init(_ name: String) {
        super.init(name, title: "Developer")
        self.name = name
    }
}

class Tester {
    static func test() {
        let manager = Manager("Deda")
        
        let iOSTeamLeader = TeamLeader("Tom")
        let seniorIOS1 = SeniorDeveloper("Kate")
        let seniorIOS2 = SeniorDeveloper("Tina")
        let iOSDeveloper = Developer("Jack")
        let iOSDevelope2 = Developer("Hardy")
        
        manager.manage(iOSTeamLeader)
        iOSTeamLeader.manage(seniorIOS1)
        iOSTeamLeader.manage(seniorIOS2)
        seniorIOS1.manage(iOSDeveloper)
        seniorIOS1.manage(iOSDevelope2)
        
        print(manager.printGroup() + "\n")
        print(iOSTeamLeader.printGroup() + "\n")
        print(seniorIOS1.printGroup() + "\n")
    }
}

Tester.test()
