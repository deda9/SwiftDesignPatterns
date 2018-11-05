protocol PizzaBuilder {
    func build() -> Pizza
}

class Pizza: CustomStringConvertible{
    private var souce: String = ""
    private var dough: String = ""
    
    func setSouce(_ souce: String) {
        self.souce = souce
    }
    
    func setDough(_ dough: String) {
        self.dough = dough
    }
    
    var description: String {
        return "Pizza souce is \(souce) and dough is \(dough)"
     }
}

class SpicyPizzaBuilder: PizzaBuilder {
    private var pizza: Pizza!
    
    init() {
        self.pizza = Pizza()
    }
    
    func buildSouce() -> Self {
        self.pizza.setSouce("RED")
        return self
    }
    
    func buildDough() -> Self {
        self.pizza.setDough("PAN BAKED")
        return self
    }
    
    func build() -> Pizza {
        return pizza
    }
}

class Tester {
    static func test() {
        let pizzaBuilder = SpicyPizzaBuilder()
        let pizza = pizzaBuilder
            .buildDough()
            .buildSouce()
            .build()
        
        print("pizza: ", pizza)
    }
}

Tester.test()
