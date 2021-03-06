# Swift4.0 Design Patterns

# Introduction
Design patterns are the best practices that the programmer can use to solve common problems when designing an application or system.
Design patterns can speed up the development, reusing the code and improves code readability.


### 1- [Chain Of Responsibility](https://github.com/deda9/SwiftDesignPatterns/tree/master/ChainOfResponsibility.playground)
>For a real life scenario, in order to understand this pattern, suppose you got a problem to solve. If you are able to handle it on your own, you will do so, otherwise you will tell your friend to solve it. If he’ll able to solve he will do that, or he will also forward it to some other friend. The problem would be forwarded until it gets solved by one of your friends or all your friends have seen the problem, but no one is able to solve it, in which case the problem stays unresolved

#### When to use
- When there are Multiple objects and the handler will be determined at runtime 
- When you don’t want to specify handlers explicitly in your code

#### Advantages
- To reduce the coupling degree.Decoupling it will request the sender and receiver
- Simplified object. The object does not need to know the chain structure

#### Disadvantages
- The request must be received not guarantee
- The performance of the system will be affected, but also in the code debugging is not easy may cause cycle call.
- It may not be easy to observe the characteristics of operation, due to debug.


### 2- [Abstract Factory](https://github.com/deda9/SwiftDesignPatterns/tree/master/AbstractFactory.playground)
>For a real life scenario, to create a kingdom we need objects with common theme. Elven kingdom needs an Elven king, Elven castle and Elven army whereas Orcish kingdom needs an Orcish king, Orcish castle and Orcish army. There is a dependency between the objects in the kingdom.


#### When to use
- When you need to make factory of factory for objects at runtime
- you want to decide which product to call from a family at runtime

#### Advantages
- Make you code decoupled and more clean


### 3- [Decorator](https://github.com/deda9/SwiftDesignPatterns/tree/master/Decorator.playground)

#### When to use
- When you need to add new functionality to an existing object without altering its structure. 


### 4- [Builder](https://github.com/deda9/SwiftDesignPatterns/tree/master/Builder.playground)

#### When to use
- When you need to build a complex object with simple way, step by step


### 5- [Prototype](https://github.com/deda9/SwiftDesignPatterns/tree/master/Prototype.playground)

#### When to use
- When you need to optimize the use case where multiple objects of the same type will have mostly the same data, so you can clone(copy) the existing object.
- **LIKE** : when an object is created from parsed data from data over the network. Then rather than re-parsing data each time a new object is created, the prototype pattern can be used to simply duplicate the original object whenever a new one is needed.


### 6- [Adapter](https://github.com/deda9/SwiftDesignPatterns/tree/master/Adapter.playground)

#### When to use
- When you need to convert the interface of a class into another interface where these calsses can work together


### 7- [Bridge](https://github.com/deda9/SwiftDesignPatterns/tree/master/Bridge.playground)

#### When to use
- When you need to decouple an abstraction from its implementation so that the two can vary independently.


### 8- [Filter](https://github.com/deda9/SwiftDesignPatterns/tree/master/Filter.playground)

#### When to use
- When you need to filter a set of objects using different criteria and chaining them in a decoupled way through logical operations.


### 9- [Facade](https://github.com/deda9/SwiftDesignPatterns/tree/master/Facade.playground)

#### When to use
- When you need to hide the complexities of the system and provides an interface to the client


### 10- [Flyweight](https://github.com/deda9/SwiftDesignPatterns/tree/master/Flyweight.playground)

#### When to use
- When you need to reduce the number of objects created and to decrease memory usage, by storing them and creates new object when no matching object is found


### 11- [Command](https://github.com/deda9/SwiftDesignPatterns/tree/master/Command.playground)

#### When to use
- When you need to encapsulate a request as an object and passed to invoker object which looks for the appropriate object which can handle this command and passes the command to the corresponding object which executes the command.


### 12- [Memento](https://github.com/deda9/SwiftDesignPatterns/tree/master/Memento.playground)

#### When to use
- When you need to restor the state of an objec to the pervious state.

### 13- [State](https://github.com/deda9/SwiftDesignPatterns/tree/master/State.playground)

#### When to use
- When you need to an object have a different behaviour based on the internal state


### 14- [Strategy](https://github.com/deda9/SwiftDesignPatterns/tree/master/Strategy.playground)

#### When to use
- When you need to define a set of encapsulated algorithms that can be swapped to carry out a specific behaviour at the runtime


### 15- [Mediator](https://github.com/deda9/SwiftDesignPatterns/tree/master/Mediator.playground)

#### When to use
- When you need to reduce the communication complexity between the related classes by encapsulating the sets of objects which interact and communicate with each other and usually when object need to talk to another object


### 16- [Proxy](https://github.com/deda9/SwiftDesignPatterns/tree/master/Proxy.playground)

#### When to use
- When you need to control and manage the access for the object which you are protecting, it can be defined as a surrogate


### 17- [Observer](https://github.com/deda9/SwiftDesignPatterns/tree/master/Observer.playground)

#### When to use
- When there is one-to-many relationship between objects such as if one object is modified, its depenedent objects are to be notified automatically


### 18- [Visitor](https://github.com/deda9/SwiftDesignPatterns/tree/master/Visitor.playground)

#### When to use
- When you need to define a new operation without changing the classes of the elements on which it operates.


### 19- [Template](https://github.com/deda9/SwiftDesignPatterns/tree/master/Template.playground)

#### When to use
- When two or more implementations of a similar algorithm exist and it lets subclasses redefine certain steps of an algorithm without changing the algorithms structure.

