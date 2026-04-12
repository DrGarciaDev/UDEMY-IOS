//
//  GridList.swift
//  ListasGrids
//
//  Created by Luis Alberto Garcia Rodriguez on 06/04/26.
//

import SwiftUI

struct GridList: View {
    let gridItem = [
        GridItem(.adaptive(minimum: 50))
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridItem, spacing: 30) {
                    ForEach(lista) { item in
                        Text(item.emoji).font(.system(size: 30))
                    }
                }
            }.navigationTitle("Grids")
        }
    }
}

#Preview {
    GridList()
}
