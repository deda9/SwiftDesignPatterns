# Swift4.0 Design Patterns

# Introduction
Design patterns are the best practices that the programmer can use to solve common problems when designing an application or system.
Design patterns can speed up the development, reusing the code and improves code readability.

# Types of Design Patterns
- Creational
- Structural
- Behavioral

### Creational Design Patterns
>In software engineering, creational design patterns are design patterns that deal with object creation mechanisms, Creational design patterns solve this problem by somehow controlling this object creation.

### Structural Design Patterns
>Structural patterns are mostly concerned with object composition or in other words how the entities can use each other. Or yet another explanation would be, they help in answering "How to build a software component?"

### Behavioral Design Patterns
>In software engineering, behavioral design patterns are design patterns that identify common communication patterns between objects and realize these patterns. By doing so, these patterns increase flexibility in carrying out this communication.

# Chain Of Responsibility
It is used to achieve loose coupling in software design where a request from client is passed to a chain of objects to process them and the object in the chain will decide themselves who will be processing the request.

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
