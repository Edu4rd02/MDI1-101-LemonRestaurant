//
//  ContentView.swift
//  101-lemonRestaurant
//
//  Created by Eduardo Becerra on 20/10/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Welcome to iOS Development")
            .foregroundStyle(Color.blue)
            .font(.title)
        
        Image(systemName: "fork.knife")
            .font(.system(size: 80))
            .foregroundStyle(Color.yellow)
        
        HStack{
            Text("Cohort 14")
                .padding(12)
                .background(Color.blue)
                .foregroundStyle(Color.white)
            
            Text("MDI1")
                .foregroundStyle(.green)
                .font(.system(size: 20))
                .bold()
        }
    }
}

#Preview {
    ContentView()
}
