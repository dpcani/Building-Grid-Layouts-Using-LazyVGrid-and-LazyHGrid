//
//  ContentView.swift
//  EssentialGridLayout
//
//  Created by Marble Interactive SL on 11/2/23.
//

import SwiftUI

struct ContentView: View {
    
    private var gridItemLayout = [
        GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())
    ]
    
    private var colors: [Color] = [.yellow, .purple, .green]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: gridItemLayout, spacing: 20) {
                ForEach((0...999), id: \.self) {
                    Image(systemName: symbols[$0 % symbols.count])
                        .font(.system(size: 30))
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50)
                        .background(colors[$0 % colors.count])
                        .cornerRadius(10)
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
