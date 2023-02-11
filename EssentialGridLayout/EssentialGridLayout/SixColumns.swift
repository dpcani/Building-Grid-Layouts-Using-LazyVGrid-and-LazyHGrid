//
//  SixColumns.swift
//  EssentialGridLayout
//
//  Created by Marble Interactive SL on 11/2/23.
//

import SwiftUI

struct SixColumns: View {
        private var sixColumnGrid: [GridItem] = Array(repeating: .init(.flexible()), count : 6)
        
        private var colors: [Color] = [.yellow, .purple, .green]
        
        var body: some View {
            ScrollView {
                LazyVGrid(columns: sixColumnGrid, spacing: 20) {
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

struct SixColumns_Previews: PreviewProvider {
    static var previews: some View {
        SixColumns()
    }
}
