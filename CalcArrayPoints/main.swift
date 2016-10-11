//
//  main.swift
//  CalcArrayPoints
//
//  Created by iGuest on 10/10/16.
//  Copyright © 2016 iSchool. All rights reserved.
//

import Foundation

func add(left: Int, right: Int) -> Int {
    return left + right
}

func subtract(left: Int, right: Int) -> Int {
    return left - right
}

func multiply(left: Int, right: Int) -> Int {
    return left * right
}

func divide(left: Int, right: Int) -> Int {
    return left / right
}

func mathOperation(left: Int, right: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(left, right)
}

func add(array: [Int]) -> Int {
    var result = 0
    for num in array {
        result += num
    }
    return result
}

func multiply(array: [Int]) -> Int {
    var result = 1
    for num in array {
        result *= num
    }
    return result
}

func count(array: [Int]) -> Int {
    return array.count
}

func average(array: [Int]) -> Int {
    return add(array: array) / array.count
}

func reduce(array: [Int], operation: ([Int]) -> Int) -> Int {
    return operation(array)
}

func add(p1: (x: Int, y: Int), p2: (x: Int, y: Int)) -> (x: Int, y: Int) {
    return (x: p1.x + p2.x, y: p1.y + p2.y)
}

func subtract(p1: (x: Int, y: Int), p2: (x: Int, y: Int)) -> (x: Int, y: Int) {
    return (x: p1.x - p2.x, y: p1.y - p2.y)
}

func add(p1: [String: Int], p2: [String: Int]) -> [String: Int] {
    return ["x": p1["x"]! + p2["x"]!, "y": p1["y"]! + p2["y"]!]
}

func subtract(p1: [String: Int], p2: [String: Int]) -> [String: Int]{
    return ["x": p1["x"]! - p2["x"]!, "y": p1["y"]! - p2["y"]!]
}


