protocol Shape {
    func draw()
    func getColor() -> String
}

class Circle: Shape{
    
    private var color: String
    
    init(_ color: String) {
        self.color = color
    }
    
    func getColor() -> String {
        return self.color
    }
    
    func draw() {
        print("Drawing a circle with color", self.color)
    }
}

class ShapeFlyweight {
    private var cachedShapesList: [Shape] = []
    
    func getShape(_ color: String) -> Shape {
        let shape = cachedShapesList.first { $0.getColor() == color }
        guard let cashedShape = shape else {
            let newShaped = Circle(color)
            self.cachedShapesList.append(newShaped)
            print("Creating new circle with color", color)
            return newShaped
        }
        print("reusing the circle with color", color)
        return cashedShape
    }
}

class Tester {
    static func test() {
        let shapeFlyweight = ShapeFlyweight()
        let circle = shapeFlyweight.getShape("Red") as! Circle
        circle.draw()
        
        let circle2 = shapeFlyweight.getShape("Red") as! Circle
        circle2.draw()
        
        let circle3 = shapeFlyweight.getShape("Green") as! Circle
        circle3.draw()
    }
}

Tester.test()
