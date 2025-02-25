//
//  TitleView.swift
//  Greetings
//
//  Created by Siddharth Sehgal on 14/01/2025.
//

import SwiftUI

struct TitleView: View {
    
    let lineWidth = 15.0
    let diameter = 70.0
    
    @State private var isRotated: Bool = false
    
    var angle: Angle {
        isRotated ? .zero : Angle(degrees: 360)
    }
    
    var angularGradient: AngularGradient {
        AngularGradient.init(gradient: Gradient(colors: [
            .pink, .purple, .blue, .orange, .green, .red]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, angle: .zero)
    }
    
    // -------------------------------------------------------------------
    @State private var subtitle = "Exploring iOS Programming"
    
    let subtitles = [
        "Learning how to bake",
        "Exploring iOS Programming",
        "Programming recipes",
        "A quest for knowledge",
    ]
    
    
    
    var body: some View {
        HStack {
            VStack (alignment: .leading, spacing: 0) {
                
                Text("Greetings")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Text(subtitle)
                    .font(.headline)
                    .fontWeight(.thin)
            }
            .onTapGesture {
                withAnimation {
                    // Change caption
                    subtitle = subtitles
                        .randomElement() ?? "Exploring iOS Programming"
                }
            }
            
            Spacer()
            
            Circle()
                .strokeBorder(angularGradient,
                              lineWidth: lineWidth)
                .rotationEffect(angle)
                .frame(width: diameter, height: diameter)
                .onTapGesture {
                    withAnimation {
                        isRotated.toggle()
                    }
                }
        }
    }
}

#Preview {
    VStack {
        TitleView()
        Spacer()
    }
    .padding()
}
