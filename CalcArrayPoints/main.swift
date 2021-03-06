//  CalcArrayPoints
//
//  Created by Seung Lee on 10/10/16.
//  Copyright © 2016 iSchool. All rights reserved.
//  Can accept optionals as parameter

import Foundation

func checkNil(obj: Int?) -> Bool {
    if obj != nil {
        return false
    } else {
        print("You have put in nil as a parameter")
        return true
    }
}

func checkNil(obj: [Int]?) -> Bool {
    if obj != nil {
        return false
    } else {
        print("You have put in nil as a parameter")
        return true
    }
}

func add(left: Int?, right: Int?) -> Int? {
    if checkNil(obj: left) || checkNil(obj: right) {
        return nil
    }
    return left! + right!
}

func subtract(left: Int?, right: Int?) -> Int? {
    if checkNil(obj: left) || checkNil(obj: right) {
        return nil
    }
    return left! - right!
}

func multiply(left: Int?, right: Int?) -> Int? {
    if checkNil(obj: left) || checkNil(obj: right) {
        return nil
    }
    return left! * right!
}

func divide(left: Int?, right: Int?) -> Int? {
    if checkNil(obj: left) || checkNil(obj: right) {
        return nil
    }
    return left! / right!
}

func mathOperation(left: Int?, right: Int?, operation: (Int?, Int?) -> Int?) -> Int? {
    return operation(left, right)
}

func add(array: [Int]?) -> Int? {
    if checkNil(obj: array) {
        return nil
    }
    var result = 0
    for num in array! {
        result += num
    }
    return result
}

func multiply(array: [Int]?) -> Int? {
    return reduce(array: array, check: 1, operation: multiply)
}

func count(array: [Int]?) -> Int? {
    return reduce(array: array, check: 0, operation: count)
}

func average(array: [Int]?) -> Int? {
    return add(array: array)! / count(array: array)!
}

func reduce(array: [Int]?, check: Int = -1, operation: ([Int]?) -> Int?) -> Int? {
    if checkNil(obj: array) {
        return nil
    }
    
    if check == -1 {
        return operation(array)
    } else {
        var result = check
        for num in array! {
            switch check {
            case 1:
                result *= num
            case 0:
                result += 1
            default:
                print("Unknown reduce call")
                return nil
            }
        }
        return result
    }
}

func add(p1: (x: Int, y: Int), p2: (x: Int, y: Int)) -> (x: Int, y: Int) {
    return (x: p1.x + p2.x, y: p1.y + p2.y)
}

func subtract(p1: (x: Int, y: Int), p2: (x: Int, y: Int)) -> (x: Int, y: Int) {
    return (x: p1.x - p2.x, y: p1.y - p2.y)
}

func add(p1: [String: Int], p2: [String: Int]) -> [String: Int]? {
    return ["x": p1["x"]! + p2["x"]!, "y": p1["y"]! + p2["y"]!]
}

func subtract(p1: [String: Int], p2: [String: Int]) -> [String: Int]? {
    return ["x": p1["x"]! - p2["x"]!, "y": p1["y"]! - p2["y"]!]
}

func pointDoubleNilCheck(p1: [String: Double]?, p2: [String: Double]?) -> Bool {
    if p1 != nil && p2 != nil {
        if p1?["x"] != nil && p1?["y"] != nil && p2?["x"] != nil && p2?["y"] != nil {
            return true
        }
    }
    print("You have put in nil as a parameter")
    return false
}

func add(p1: [String: Double]?, p2: [String: Double]?) -> [String: Double]? {
    if pointDoubleNilCheck(p1: p1, p2: p2) {
            return ["x": (p1?["x"])! + (p2?["x"])!, "y": (p1?["y"])! + (p2?["y"])!]
    }
    return nil
}

func subtract(p1: [String: Double]?, p2: [String: Double]?) -> [String: Double]? {
    if pointDoubleNilCheck(p1: p1, p2: p2) {
        return ["x": (p1?["x"])! - (p2?["x"])!, "y": (p1?["y"])! - (p2?["y"])!]
    }
    return nil
}

