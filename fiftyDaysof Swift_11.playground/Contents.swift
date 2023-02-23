import UIKit

var greeting = "Hello, playground"


struct Stack<T> {
    
    private var array: [T] = []
    
    mutating func pop() -> T{
        array.removeLast()
    }
    
    mutating func push(_ element: T){
        array.append(element)
    }
}

var stack = Stack<Int>()
stack.push(2)
stack.push(10)
print(stack.pop())
print(stack.pop())

// que yapımı


struct StackQue<T: Decodable> {
    
    private var array: [T] = []
    
    mutating func pop() -> T? {
         if !array.isEmpty {
           return array.removeFirst()
         } else {
           return nil
         }
    }
        mutating func push(_ element: T){
        array.append(element)
    }
}


var stackQue = StackQue<Int>()


stackQue.push(15)
stackQue.push(25)

print(stackQue.pop())

typealias xxx = String

struct ObjectSample<Decodable> {
    
    typealias xxx = String

    var string: xxx = ""
    
    
}
