//
//  TextView.swift
//  Greetings
//
//  Created by Siddharth Sehgal on 14/01/2025.
//

import SwiftUI

struct TextView: View {
    
    let text: String
    @State var color: Color
    
    let colors: [Color] = [
        .red,
        .green,
        .blue,
        .orange,
        .yellow,
        .purple,
        Color(red: 0.5, green: 0, blue: 0.5),
        Color(red: 0, green: 0.5, blue: 0.5),
        Color(red: 139/255, green: 207/255, blue: 240/255),
        Color(red: 1, green: 215/255, blue: 0),
    
    ]
    
    var body: some View {
        
        Text(text)
            .fontWeight(.semibold)
            .padding()
            .foregroundStyle(Color.white)
            .background(color.opacity(0.4))
            .cornerRadius(20.0)
            .shadow(color: color, radius: 5, x: 10, y:10)
            .onTapGesture {
                // Randomly change color
                withAnimation {
                    color = colors.randomElement() ?? .red
                }
                // if randomelement returns nil, use .red
            }

    }
}

#Preview {
    VStack {
        TextView(text: "Hello there!", color: .blue)
        TextView(text: "Hummus", color: .green)
        TextView(text: "Peace", color: .purple)
    }
}
