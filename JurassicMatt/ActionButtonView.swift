//
//  ActionButton.swift
//  JurassicMatt
//
//  Created by KEVIN on 05/12/2022.
//

import SwiftUI

struct ActionButtonView: View {
    
    var buttonTitle: String
    @Binding var action: String
    @Binding var currentSprite: Int
    
    var body: some View {
        Button(buttonTitle) {
            currentSprite = 1
            switch buttonTitle {
            case "Cours": action = "Run"
            case "Saute": action = "Jump"
            case "GameOver": action = "Dead"
            default: break
            }
        }.buttonStyle(.borderedProminent)
    }
}

struct ActionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ActionButtonView(buttonTitle: "Cours", action: .constant("Run"), currentSprite: .constant(1))
    }
}
