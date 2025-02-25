//
//  ContentView.swift
//  Greetings
//
//  Created by Siddharth Sehgal on 14/01/2025.
//

import SwiftUI


/// hi
// hi

struct ContentView: View {
    
    var body: some View {
        ZStack {
            // Background gradient made in BackgroundView(), invoked here
            BackgroundView()
            
            VStack (alignment: .leading) {
                // Title, made in TitleView(), invoked here
                TitleView()
                
                Spacer()
                
                // Messages, made in MessagesView() -> TextView() -> DataItemModel(), invoked here
                MessagesView()
                
                Spacer()
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
