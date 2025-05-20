//
//  ContentView.swift
//  23.ViewsAndModifiers
//
//  Created by Валентин on 16.05.2025.
//

import SwiftUI

struct LargeBlueText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.blue)
    }
}

extension View {
    func largeBlueStyle() -> some View {
        modifier(LargeBlueText())
    }
}

struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int
    @ViewBuilder let content: (Int, Int) -> Content
    
    var body: some View {
        VStack {
            ForEach(0..<rows, id: \.self) { row in
                HStack {
                    ForEach(0..<columns, id: \.self) { column in
                    content(row, column)
                    }
                }
            }
        }
    }
}

struct ContentView: View {
    var body: some View {
        Text("Демонстрация работы кастомного контейнера")
            .largeBlueStyle()
        GridStack(rows: 4, columns: 4) { row, col in
            Image(systemName: "\(row * 4 + col).circle")
            Text("R\(row) C\(col)")
        }
    }
}

#Preview {
    ContentView()
}
