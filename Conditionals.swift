//
//  Conditionals.swift
//  101-lemonRestaurant
//
//  Created by Jose Eduardo Becerra Flores on 24/10/26.
//

import Playgrounds

#Playground("Conditionals") {
    // Example 1
    var guests = 17
    let capacity = 10
    
    if guests > capacity {
        print("Over capacity")
    } else {
        print("We can seat this party")
    }
    
    // Example 2
    let rating = 4.0
    
    if rating >= 4.5 {
        print("Excellent")
    } else if rating >= 3.5 {
        print("Good")
    } else {
        print("Needs improvements")
    }
    
    // Example 3 - Comparing Strings
    let userName = "Ken"
    
    if userName == "Clark" {
        print("Welcome Clark")
    } else {
        print("Invalid information")
    }
}
