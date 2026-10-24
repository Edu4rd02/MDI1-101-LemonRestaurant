//
//  ReservationForm.swift
//  101-lemonRestaurant
//
//  Created by Jose Eduardo Becerra Flores on 22/10/26.
//

import SwiftUI

struct ReservationForm: View {
    //Constants
    let restaurantName = "Little Lemon"
    
    //State variables
    // If the value change, update UI
    @State private var userName = ""
    @State private var guestCount = 1
    @State private var phoneNumber = ""
    @State private var occasion = ""
    @State private var notes = ""
    @State private var childrenCount = 0
    
    var body: some View {
        Form{
            //Header
            Section{
                HStack{
                    Image(systemName:"fork.knife")
                        .foregroundStyle(.green)
                        .font(.title2)
                    VStack{
                        Text(restaurantName)
                            .font(.title3)
                            .bold()
                        Text("Reservation Form")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                }
            }
            //Reservation details
            Section(header: Text("Reservation Details")){
                TextField("Name", text: $userName)
                    .autocorrectionDisabled(true)
                    .textInputAutocapitalization(.words)
                Stepper("Guests: \(guestCount)",value:$guestCount, in:1...10)
            }
            
            Section(header: Text("Contact")){
                TextField("Phone", text:$phoneNumber)
            }
            
            Section(header: Text("Optional")){
                TextField("Occasion (Birthday, Anniversary, etc.)", text:$occasion)
                TextField("Notes", text:$notes)
                Stepper("Children: \(childrenCount)",value:$childrenCount, in:0...5)
            }
            
            Section(){
                Text("Preview reservation").foregroundStyle(.blue)
            }
            
            //Printing information
            Section(header:Text("Preview")){
                Text("""
                    Name: \(userName)
                    Guests: \(guestCount)
                    Phone: \(phoneNumber)
                    Children: \(childrenCount)
                    Occasion: \(occasion)
                    Notes: \(notes)
                    """)
                .foregroundStyle(.gray)
            }
        }
    }
}

#Preview {
    ReservationForm()
}
