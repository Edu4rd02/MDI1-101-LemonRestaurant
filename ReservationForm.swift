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
    @State private var previewText = ""
    @State private var showMessage = true
    
    var body: some View {
        Form{
            //Header
            Section{
                HStack{
                    Image(systemName:"fork.knife")
                        .foregroundStyle(.green)
                        .font(.title2)
                    VStack(alignment: .leading){
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
                VStack(alignment: .leading, spacing: 4) {
                    TextField("Name", text: $userName)
                        .autocorrectionDisabled(true)
                        .textInputAutocapitalization(.words)
                    
                    if userName.isEmpty {
                        Text("Please enter a name")
                            .font(.footnote)
                            .foregroundStyle(.red)
                    }
                }.animation(.default, value: userName.isEmpty)
                
                VStack(alignment: .leading, spacing: 10){
                    Stepper("Guests: \(guestCount)",value:$guestCount, in:1...10)
                    
                    if guestCount >= 8 {
                        Text("Large group - we'll do our best to accommodate you.")
                            .font(.footnote)
                            .foregroundStyle(.orange)
                    }
                }
            }
            
            Section(header: Text("Contact")){
                VStack(alignment: .leading, spacing: 4){
                    TextField("Phone", text:$phoneNumber)
                    
                    if phoneNumber.isEmpty {
                        Text("Phone number is required")
                            .font(.footnote)
                            .foregroundStyle(.red)
                    } else if phoneNumber.count < 10 {
                            Text ("Number too short - keep typing")
                            .font(.footnote)
                            .foregroundStyle(.red)
                    }  else {
                        Text("Looks good")
                            .font(.footnote)
                            .foregroundStyle(.green)
                    }
                }.animation(.default, value: phoneNumber)
            }
            
            Section(header: Text("Optional")){
                TextField("Occasion (Birthday, Anniversary, etc.)", text:$occasion)
                TextField("Notes", text:$notes)
                VStack(alignment: .leading, spacing:10){
                    Stepper("Children: \(childrenCount)",value:$childrenCount, in:0...5)
                    
                    if childrenCount > 0 {
                        Text("Kids menu available")
                            .font(.footnote)
                            .foregroundStyle(.blue)
                    }
                }
                Toggle("Show an special text",isOn: $showMessage)
                if showMessage {
                    Text("Discount %")
                        .foregroundStyle(.green)
                }
            }
            
            Section(header: Text("Actions")){
                HStack{
                    Spacer()
                    Button("Preview reservation details"){
                        previewText = """
                            Name: \(userName)
                            Guests: \(guestCount)
                            Phone: \(phoneNumber)
                            Children: \(childrenCount)
                            Occasion: \(occasion)
                            Notes: \(notes)
                        """
                    }.buttonStyle(.borderedProminent)
                        .disabled(userName.isEmpty || phoneNumber.count < 10)
                        .foregroundStyle(.white)
                        .bold()
                        .tint(.blue)

                    Spacer()
                }
            }
            
            //Printing information
            Section(header:Text("Preview")){
                Text(previewText)
                .foregroundStyle(.gray)
            }
        }
    }
}

#Preview {
    ReservationForm()
}
