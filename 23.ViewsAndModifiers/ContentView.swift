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
        Button("Hello, world!"){
            useRedText.toggle()
        }
        .foregroundStyle(useRedText ? .red : .blue)
    }
}

#Preview {
    ContentView()
}
