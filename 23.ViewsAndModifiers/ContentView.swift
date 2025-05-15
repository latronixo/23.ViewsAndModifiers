//
//  ContentView.swift
//  23.ViewsAndModifiers
//
//  Created by Валентин on 16.05.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button("Hello, world!"){
            print(type(of: self.body))
        }
        .frame(width: 200, height: 200)
        .background(.red)
    }
}

#Preview {
    ContentView()
}
