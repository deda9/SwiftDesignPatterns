import Foundation

protocol Shape {
    var name: String! { get set }
    var background: String! { get set }
    func copy() -> Any
    func draw()
}

class Circle: Shape, NSCopying {
    
    var name: String!
    var background: String!
    
    init(_ name: String, background: String) {
        self.name = name
        self.background = background
    }
    
    func draw() {
        print("Drawing ", name!, " with ", background!, " color")
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        let copy = Circle(self.name, background: self.background)
        return copy
    }
    
    func copy() -> Any {
        return self.copy(with: nil)
    }
}


class Triangle: Shape, NSCopying {
    
    var name: String!
    var background: String!
    
    init(_ name: String, background: String) {
        self.name = name
        self.background = background
    }
    
    func draw() {
        print("Drawing ", name!, " with ", background!, " color")
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        let copy = Triangle(self.name, background: self.background)
        return copy
    }
    
    func copy() -> Any {
        return self.copy(with: nil)
    }
}

class ShapePrototype {
    var list: [Shape] = []
    
    func getShape(with name: String) -> Shape? {
        let firstShape = self.list.first { $0.name == name }
        
        if firstShape != nil {
            print("--- cloning ", name, " ----")
            return firstShape!.copy() as? Shape
        } else {
            print(name, "doesnt exist")
            return nil
        }
    }
    
    func cashShape(_ shape: Shape) {
        self.list.append(shape)
    }
}

class Tester {
    static func test() {
        let prototype = ShapePrototype()
        
        if let circle: Circle = prototype.getShape(with: "Circle") as? Circle {
            circle.draw()
        } else {
            let newCircle = Circle("Circle", background: "Red")
            newCircle.draw()
            prototype.cashShape(newCircle)
        }
        
        let secondCircle: Circle = prototype.getShape(with: "Circle") as! Circle
        secondCircle.draw()
    }
}

Tester.test()
