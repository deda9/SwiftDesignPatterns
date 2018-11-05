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
