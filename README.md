# Swift4.0 Design Patterns

# Introduction
Design patterns are the best practices that the programmer can use to solve common problems when designing an application or system.
Design patterns can speed up the development, reusing the code and improves code readability.


# Chain Of Responsibility
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
