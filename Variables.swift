//
//  Variables.swift
//  101-lemonRestaurant
//
//  Created by Jose Eduardo Becerra Flores on 22/10/26.
//

import Playgrounds

#Playground("Variables"){
    
    //Variables
    var restaurantName = "Little Lemon"
    print("Hello \(restaurantName)")
    
    restaurantName = "Little Lemon Bistro"
    print("Hello \(restaurantName)")
    
    //Constants
    let city = "New York"
    //City = "Chicago"  -  ERROR
    print("Our restaurant is located in \(city)")
    
    //String
    var specialDish = "Pasta"
    
    //Integers
    var availableTables = 5
    
    //Double
    var dishPrice = 10.95
    
    //Booleans
    var isOpen = true
    
    print("Today's special: \(specialDish) - $\(dishPrice)")
    
    // Challenge 1
    var specialDrink = "Pink lemonade"
    var remainingLemonades = 4
    var fee = 1.50
    var isKitchenClosed = false
}
