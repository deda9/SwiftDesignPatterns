
protocol Subject {
    func notifyObservers()
    func register(_ observer: Observer)
    func unRegister(_ observer: Observer)
}

protocol Observer {
    var _id: String! { get }
    func update(_ data: String)
}

class LaptopScreen: Observer {
    private(set) var _id: String!
    
    init(_ _id: String) {
        self._id = _id
    }
    
    func update(_ data: String) {
        print("Updating \(_id!) data with", data )
    }
}

class TVScreen: Observer {
    var _id: String!
    
    init(_ _id: String) {
        self._id = _id
    }
    
    func update(_ data: String) {
        print("Updating \(_id!) data with", data)
    }
}

class DataProducer: Subject {
    private var data: String = ""
    
    private var observers: [Observer] = []
    
    func updateData(_ data: String) {
        self.data = data
        notifyObservers()
    }
    
    func register(_ observer: Observer) {
        observers.append(observer)
    }
    
    func unRegister(_ observer: Observer) {
        let index = observers.index{
            $0._id == observer._id
        }
        guard let _index = index else {
            return
        }
        self.observers.remove(at: _index)
    }
    
    func notifyObservers() {
        observers.forEach {
            $0.update(self.data)
        }
    }
}

class Tester {
    static func test() {
        let dataProducer = DataProducer()
        let laptopScreen = LaptopScreen("laptopScreen1")
        let tvScreen1 = TVScreen("tvScreen1")
        let tvScreen2 = TVScreen("tvScreen2")
        
        dataProducer.register(laptopScreen)
        dataProducer.register(tvScreen1)
        dataProducer.register(tvScreen2)
        
        dataProducer.updateData("A")
        print("\n")
        dataProducer.updateData("B")
        print("\n")
        dataProducer.unRegister(tvScreen1)
        dataProducer.updateData("C")
    }
}

Tester.test()
