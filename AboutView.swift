//
//  AboutView.swift
//  101-lemonRestaurant
//
//  Created by Jose Eduardo Becerra Flores on 20/10/26.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        Text("About Little Lemon")
            .font(.title)
            .fontWeight(.bold)
            .foregroundStyle(.green)
        Text("Little Lemon is a fancy restaurant that offers its customers dishes with exquisite flavor. Quality and love above all else.")
            .padding(.horizontal,50)
            .padding(.vertical,20)
            .multilineTextAlignment(TextAlignment.center)
        HStack{
            Image(systemName: "fork.knife")
            Image(systemName: "leaf")
            Image(systemName: "map")

        }
        .foregroundStyle(.yellow)
        .font(.largeTitle)
    }
}

#Preview {
    AboutView()
}
