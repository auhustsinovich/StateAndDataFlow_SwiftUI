//
//  SymbolCounter.swift
//  StateAndDataFlow
//
//  Created by Daniil Auhustsinovich on 20.05.22.
//

import Combine
import SwiftUI

class SymbolCounter: ObservableObject {
    
    @Published var counter = 0
    @Published var text = "" {
        didSet {
            counter = text.count
        }
    }
    
    func symbolColor(color: Int) -> Color {
        if counter < 3 {
            return Color.red
        } else {
            return Color.green
        }
    }
    
    func textColor(color: Int) -> Color {
        if counter < 3 {
            return Color.gray
        } else {
            return Color.blue
        }
    }
}
    
