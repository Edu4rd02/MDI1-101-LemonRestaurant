//
//  Functions.swift
//  101-lemonRestaurant
//
//  Created by Jose Eduardo Becerra Flores on 24/10/26.
//

import Playgrounds

#Playground("Functions"){
    // Function with no params and no return
    func printWelcome(){
        print("Welcome cohort #14")
    }
    
    printWelcome()
    
    //Function with 1 parameter
    func greet(person:String) -> String {
        let greeting = "Hello " + person + "!"
        return greeting
    }
    
    let message = greet(person:"Eduardo")
    print(message)
    
    // Function with 2 parameters
    func add(num1:Int, num2:Int) -> Int {
        return num1 + num2
    }
    
    var result = add(num1:2,num2:5)
    print(result)
    
    result = add(num1:10,num2:20)
    print(result)
    
    // Function with unamed parameters
    func mult(_ num1:Int, _ num2:Int) -> Int {
        return num1 * num2
    }
    
    result = mult(2,6)
    print(result)
    
    // Challenge 1
    func welcomeStudent(name:String) -> String {
        return "Welcome, \(name)! Are you ready to learn Swift?"
    }
    
    print(welcomeStudent(name:"Michael"))
}
