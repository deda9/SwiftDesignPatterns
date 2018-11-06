

class Game {
    final func play() {
        startGame()
        playGame()
        endGame()
    }
    
    func startGame() {}
    func playGame() {}
    func endGame() {}
}

class Football: Game {
    override func startGame() {
        print("start playing Football")
    }
    
    override func playGame() {
        print("playing Football")
    }
    override func endGame() {
        print("end playing Football")
    }
}

class Basketball: Game {
    override func startGame() {
        print("start playing Basketball")
    }
    
    override func playGame() {
        print("playing Basketball")
    }
    override func endGame() {
        print("end playing Basketball")
    }
}

class Tester {
    static func test() {
        let football = Football()
        football.play()
        print("\n")
        
        let basketball = Basketball()
        basketball.play()
    }
}

Tester.test()
