protocol Shape {
    func draw()
}

class Circle: Shape {
    func draw() {
        print("Draw a circle")
    }
}

class RedDecorator: Shape {
    private var shape: Shape!
    
    init(_ shape: Shape) {
        self.shape = shape
    }
    
    func draw() {
        self.shape.draw()
        setShapeRedColor()
    }
    
    private func setShapeRedColor() {
        print("Paint the shape with red color")
    }
}

class BorderDecorator: Shape {
    private var shape: Shape!
    
    init(_ shape: Shape) {
        self.shape = shape
    }
    
    func draw() {
        self.shape.draw()
        setShapeBorder()
    }
    
    private func setShapeBorder() {
        print("draw a border for the shape")
    }
}

class TestDecorator {
    static func test() {
        let circle: Shape = Circle()
        let redDecorator = RedDecorator(circle)
        let borderDecorator = BorderDecorator(redDecorator)
        borderDecorator.draw()
    }
}

TestDecorator.test()


