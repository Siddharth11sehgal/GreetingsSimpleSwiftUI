//
//  BackgroundView.swift
//  Greetings
//
//  Created by Siddharth Sehgal on 14/01/2025.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(colors: [
            .myBlue,
            .myPurple,
        ], startPoint: .topLeading, endPoint:
            .bottomTrailing)
            .opacity(0.5)
            .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
