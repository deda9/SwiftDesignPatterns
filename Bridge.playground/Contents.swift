protocol Vehicle {
    func manifacture()
}

protocol WorkShop {
    func work()
}

class DoorsWorkShop: WorkShop {
    func work() {
        print("Doing doors")
    }
}

class BodyWorkShop: WorkShop {
    func work() {
        print("Doing body")
    }
}

class Car: Vehicle{
    private var doors: WorkShop!
    private var body: WorkShop!
    
    init(doors: WorkShop, body: WorkShop) {
        self.doors = doors
        self.body = body
    }
    
    func manifacture() {
        print("manifacture the car...")
        self.doors.work()
        self.body.work()
    }
}

class Tester {
    static func test() {
        let doors = DoorsWorkShop()
        let body = BodyWorkShop()
        
        let car = Car(doors: doors, body: body)
        car.manifacture()
    }
}

Tester.test()
