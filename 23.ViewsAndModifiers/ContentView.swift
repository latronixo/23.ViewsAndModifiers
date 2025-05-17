//
//  ContentView.swift
//  23.ViewsAndModifiers
//
//  Created by Валентин on 16.05.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var useRedText = false
    
    var body: some View {
        VStack {
            Text("First text")
                .font(.largeTitle)
            Text("Second text")
            Text("Third text")
            Text("Fourth text")
        }
        .font(.title)
        .blur(radius: 5)
    }
}

#Preview {
    ContentView()
}
