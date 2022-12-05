//
//  ContentView.swift
//  JurassicMatt
//
//  Created by KEVIN on 03/12/2022.
//

import SwiftUI

struct HomeView: View {
    
    var runCount = 8
    var deadCount = 8
    var jumpCount = 12
    
    @State var action = "Jump"
    @State var currentSprite = 1
    
    func getImage() -> String {
        let base = action
        let end = "(\(currentSprite))"
        return base + " " + end
    }
    
    func updateSprite() {
        if action == "Jump" {
            if currentSprite == jumpCount {
                currentSprite = 1
            } else {
                currentSprite += 1
            }
        } else {
            if currentSprite == runCount {
                currentSprite = 1
            } else {
                currentSprite += 1
            }
        }
    }
    
    var body: some View {
        VStack {
            Text("Jurassic Matt")
                .font(.custom("Jurassic Park", size: 75))
                .foregroundColor(.primary)
                .shadow(color: .red, radius: 0, x: 2, y: 2)
            Image(getImage())
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 250)
                .background(.gray)
                .cornerRadius(25)
            Spacer()
            Button {
                updateSprite()
            } label: {
                Image(systemName: "play.circle.fill")
                    .font(.system(size: 50))
            }
            HStack {
                ActionButtonView(buttonTitle: "Cours", action: $action, currentSprite: $currentSprite)
                Spacer()
                ActionButtonView(buttonTitle: "Saute", action: $action, currentSprite: $currentSprite)
                Spacer()
                ActionButtonView(buttonTitle: "GameOver", action: $action, currentSprite: $currentSprite)
            }
            .padding()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
