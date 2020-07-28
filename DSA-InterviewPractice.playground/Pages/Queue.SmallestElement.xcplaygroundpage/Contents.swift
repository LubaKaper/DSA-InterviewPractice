import Foundation


//Queues: is a abstract data type that is a FIFO structure (meqning: first object added is the first object to be removed from the data structure)
//methods of a Queue: FIRST IN FIRST OUT!
//enqueue: add item to the back of the queue
//dequeue: remove item from the front of the queue
//properties: count, isEmpty, peek
struct Queue<T> {
    // implementing a queue using an array
    private var elements = [T]()
    // private var linkedList = LinkedList<T>()
    // private var stack = [Int]()
    public var isEmpty: Bool {
        return elements.isEmpty
    }
    public var count: Int {
        return elements.count
    }
    //returns the item in the front of the queue, does not remove it
    public var peek: T? {
        return elements.first
    }
    //add item to elements
    public mutating func enqueue(_ item: T) {
        elements.append(item)
    }
    //remove item from front of elements array
    public mutating func dequeue() -> T? {
        guard !isEmpty else { return nil }
        return elements.removeFirst()
    }
}

func smallestElement(q: Queue<Int>) -> Int? {
    let queue = q
    var smallest = queue.peek()
    
}
