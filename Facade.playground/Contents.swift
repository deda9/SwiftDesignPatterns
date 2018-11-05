class CashSetupManager {
    
    static func start() {
        print("start cashing setup")
    }
}

class TrackerManager {
    static func start() {
        print("start tracking setup")
    }
}

class LoggerManger {
    static func start() {
        print("start logger setup")
    }
}

class FacadeStartup {
    
    static func start() {
        CashSetupManager.start()
        TrackerManager.start()
        LoggerManger.start()
    }
}

class Tester {
    static func test() {
        FacadeStartup.start()
    }
}

Tester.test()
