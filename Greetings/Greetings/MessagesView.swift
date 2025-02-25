//
//  MessagesView.swift
//  Greetings
//
//  Created by Siddharth Sehgal on 14/01/2025.
//

import SwiftUI

struct MessagesView: View {
    let messages: [DataItemModel] = [
        .init(
            text: "Hello there!",
            color: .myGreen),
        .init(
            text: "Welcome to Swift Programming",
            color: .myGray),
        .init(
            text: "Are you ready to,",
            color: .myYellow),
        .init(
            text: "Start exploring?",
            color: .myRed),
        .init(
            text: "Boom.",
            color: .myPurple)
    ]
    
    var body: some View {
        VStack (alignment: .leading) {
            ForEach(messages) { dataItem in
                TextView(text: dataItem.text, color: dataItem.color)
            }
        }
    }
}

#Preview {
    MessagesView()
}
