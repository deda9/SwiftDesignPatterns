enum MarriedStatus {
    case divorced
    case single
    case married
}

enum Gender {
    case male
    case female
}

class Person {
    var name: String!
    var gender: Gender!
    var status: MarriedStatus = .single
    var age: Int!
    
    init(name: String, gender: Gender, status: MarriedStatus, age: Int) {
        self.name = name
        self.gender = gender
        self.status = status
        self.age = age
    }
}

protocol Criteria {
    func meetCriteria(_ persons: [Person]) -> [Person]
}

class GenderCriteria: Criteria {
    private var gender: Gender!
    
    init(gender: Gender) {
        self.gender = gender
    }
    
    func meetCriteria(_ persons: [Person]) -> [Person] {
        return persons.filter({ $0.gender == self.gender })
    }
}

class MarriedStatusCriteria: Criteria {
    private var status: MarriedStatus!
    
    init(status: MarriedStatus) {
        self.status = status
    }
    
    func meetCriteria(_ persons: [Person]) -> [Person] {
        return persons.filter({ $0.status == self.status })
    }
}

class AgeCriteria: Criteria {
    private var age: Int!
    
    init(age: Int) {
        self.age = age
    }
    func meetCriteria(_ persons: [Person]) -> [Person] {
        return persons.filter({ $0.age >= self.age})
    }
}

class AndCriteria: Criteria {
    private var firstCirteria: Criteria!
    private var andCirteria: Criteria!
    
    init(_ firstCirteria: Criteria, and: Criteria) {
        self.firstCirteria = firstCirteria
        self.andCirteria = and
    }
    
    func meetCriteria(_ persons: [Person]) -> [Person] {
        let first = firstCirteria.meetCriteria(persons)
        return andCirteria.meetCriteria(first)
    }
}

class Tester {
    static func test() {
        let persons = [
            Person(name: "Beso", gender: .male, status: .single, age: 29),
            Person(name: "Tina", gender: .female, status: .married, age: 30),
            Person(name: "Tina", gender: .female, status: .single, age: 25),
            Person(name: "Beso", gender: .male, status: .married, age: 28)
        ]
        let singleCirteria = MarriedStatusCriteria(status: .single)
        let ageCirteria = AgeCriteria(age: 25)
        let maleCirteria = GenderCriteria(gender: .male)
        let singleMale = AndCriteria(singleCirteria, and: maleCirteria)
        let singleMale29 = AndCriteria(singleMale, and: ageCirteria)
        
        singleMale29.meetCriteria(persons).forEach {
            print("name", $0.name!, ",aga", $0.age!, ",status", $0.status, ",gender ", $0.gender!)
        }
    }
}

Tester.test()
