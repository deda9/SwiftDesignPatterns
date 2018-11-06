protocol Command {
    func excute()
}

class Light {
    var isOn: Bool = false
    
    func switchOn() {
        self.isOn = true
        print("Switching on the light")
    }
    
    func switchOff() {
        self.isOn = false
        print("Switching off the light")
    }
}

class LightOnCommand: Command {
    private var light: Light!
    
    init(_ light: Light) {
        self.light = light
    }
    
    func excute() {
        self.light.switchOn()
    }
}

class LightOffCommand: Command {
    private var light: Light!
    
    init(_ light: Light) {
        self.light = light
    }
    
    func excute() {
        self.light.switchOff()
    }
}

class RemoteControl {
    private var command: Command!
    
    func setCommand(_ command: Command) {
        self.command = command
    }
    
    func pressButton() {
        command.excute()
    }
}

class Tester {
    static func test() {
        let remoteControl = RemoteControl()
        let light = Light()
        let lightOnCommand = LightOnCommand(light)
        let lightOffCommand = LightOffCommand(light)
        
        remoteControl.setCommand(lightOnCommand)
        remoteControl.pressButton()
        
        remoteControl.setCommand(lightOffCommand)
        remoteControl.pressButton()
    }
}

Tester.test()
