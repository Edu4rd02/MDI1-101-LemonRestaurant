// xcode: set sdk=iOS

//
//  BillCalculatorView.swift
//  
//
//  Created by Jose Eduardo Becerra Flores on 27/10/26.
//

import SwiftUI

struct BillCalculatorView: View {
    let adultPrice: Double = 15.00
    let childPrice: Double = 8.00
    let taxRate: Double = 0.08
    
    @State private var adults = 1
    @State private var children = 0
    @State private var hasDiscount = false
    
    func calculateSubtotal(_ person: Int, _ price: Double) -> Double {
        return Double(person) * price
    }
    
    func calculateTax(_ person: Int, _ price: Double) -> Double {
        return calculateSubtotal(person, price) * taxRate
    }
    
    func calculateTotal(_ person: Int, _ price: Double) -> Double {
        return calculateSubtotal(person, price) + calculateTax(person, price)
    }
    
    private var subtotal: Double { calculateSubtotal(adults,adultPrice) + calculateSubtotal(children,childPrice)
    }
    
    private var tax: Double { calculateTax(adults,adultPrice) + calculateTax(children,childPrice)
    }
    
    private var totalAdults: Double {
        calculateTotal(adults, adultPrice)
    }
    private var totalChildren: Double {
        calculateTotal(children,childPrice)
    }
    
    private var totalPerAdult: Double {
        totalAdults / Double(adults)
    }
    private var totalPerChild: Double {
        children > 0 ? totalChildren / Double(children) : 0
    }
    
    
    
    var body: some View {
        Form {
            Section{
                HStack{
                    // Icon
                    Image(systemName: "fork.knife.circle.fill")
                        .font(.title)
                        .foregroundStyle(.green)
            
                    // Title and Subtitle
                    VStack(alignment: .leading){
                        Text("Bill Calculator")
                            .font(.title3)
                            .bold()
                        Text("Little Lemon")
                            .font(.caption)
                            .foregroundStyle(.secondary)
                    }.padding(.horizontal,4)
                }
            }
            
            Section(header: Text("Your Group")){
                Stepper(
                    "Adults: \(adults)",
                    value: $adults,
                    in: 1...20
                )
                Stepper(
                    "Children: \(children)",
                    value: $children,
                    in: 0...20
                )
                Toggle(
                    "Apply discount",
                    isOn: $hasDiscount
                )
            }
            
            Section(header: Text("Breakdown")){
                HStack{
                    Text("Subtotal")
                        .foregroundStyle(.secondary)
                    Spacer()
                    Text("$ \(String(format: "%.2f", subtotal)) " )
                }
                HStack{
                    Text("Tax 8%")
                        .foregroundStyle(.secondary)
                    Spacer()
                    Text("$ \(String(format:"%.2f", tax))")
                }
                Spacer()
                HStack{
                    Text("Total").bold()
                    Spacer()
                    Text("$\(String(format:"%.2f",totalAdults + totalChildren))")
                }
            }
            
            Section(header: Text("Per Person")){
                HStack(){
                    Text("Adults")
                    Spacer()
                    Text("\(adults) adults")
                }.font(.subheadline).foregroundStyle(.secondary)
                HStack(){
                    Text("Each adult pays")
                    Spacer()
                    Text("$ \(String(format:"%.2f",totalPerAdult)) ")
                }.font(.headline)
                if children > 0 {
                    HStack(){
                        Text("Children")
                        Spacer()
                        Text("\(children) Children")
                    }.font(.subheadline).foregroundStyle(.secondary)
                    HStack(){
                        Text("Each child pays")
                        Spacer()
                        Text("$ \(String(format:"%.2f",totalPerChild)) ")
                    }.font(.headline)
                }
            }
        }
        .navigationTitle("Bill Calculator")
        .animation(.default, value:children)
    }
}

#Preview {
    BillCalculatorView()
}
