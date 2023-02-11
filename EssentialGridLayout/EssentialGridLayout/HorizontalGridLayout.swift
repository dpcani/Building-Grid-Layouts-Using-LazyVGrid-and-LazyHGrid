//
//  HorizontalGridLayout.swift
//  EssentialGridLayout
//
//  Created by Marble Interactive SL on 11/2/23.
//

import SwiftUI

struct HorizontalGridLayout: View {
    private var gridItemLayout = [GridItem(.fixed(150)), GridItem(.adaptive(minimum: 50 ))]
    private var colors: [Color] = [.yellow, .purple, .green]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: gridItemLayout, spacing: 20) {
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

struct HorizontalGridLayout_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalGridLayout()
    }
}
