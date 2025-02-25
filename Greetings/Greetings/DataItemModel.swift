//
//  DataItemModel.swift
//  Greetings
//
//  Created by Siddharth Sehgal on 14/01/2025.
//

import Foundation
import SwiftUI

struct DataItemModel: Identifiable {
    let id = UUID()
    // identifiable -> uuid -> unique user id
    let text: String
    let color: Color
}

