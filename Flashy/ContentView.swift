//
//  ContentView.swift
//  Flashy
//
//  Created by Zi on 28/08/2025.
//

import SwiftUI

extension View{
    func stacked(at position: Int, in total: Int ) -> some View {
        let offset = Double(total - position)
        return self.offset(x: 0, y: offset * 10)
    }
}

struct ContentView: View {
    @State private var cards = Array<Card>(repeating: Card.example, count: 10)
    
    var body: some View {
        ZStack{
            VStack{
                ZStack{
                    ForEach(0..<cards.count, id: \.self) { index in
                        CardView(card: cards[index])
                            .stacked(at: index, in: cards.count)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
