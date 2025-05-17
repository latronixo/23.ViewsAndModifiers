//
//  ContentView.swift
//  23.ViewsAndModifiers
//
//  Created by Валентин on 16.05.2025.
//

import SwiftUI

struct ContentView: View {
    var motto1: some View{
        Text("Дом дракона")
    }
    
    let motto2 = Text("Таргариены")
    
    var spells: some View {
        Group {
            Text("Lumos")
            Text("Obliviate")
        }
    }

    var body: some View {
        VStack {
            motto1
                .font(.title)
            spells
        }
    }
}

#Preview {
    ContentView()
}
