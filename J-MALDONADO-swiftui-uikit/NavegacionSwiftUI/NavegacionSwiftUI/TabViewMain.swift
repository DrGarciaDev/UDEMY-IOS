//
//  TabViewMain.swift
//  NavegacionSwiftUI
//
//  Created by Luis Alberto Garcia Rodriguez on 08/03/26.
//

import SwiftUI

struct TabViewMain: View {
    var body: some View {
        TabView{
            ContentView().tabItem{
                Label("Home", systemImage: "house.fill")
            }
            Vista2().tabItem{
                Label("Vista 2", systemImage: "plus")
            }
            TercerVista().tabItem{
                Label("Vista 2", systemImage: "camera")
            }
        }
    }
}

//#Preview {
//    TabViewMain()
//}
