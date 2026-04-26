//
//  CicloVidaSwiftUIApp.swift
//  CicloVidaSwiftUI
//
//  Created by Luis Alberto Garcia Rodriguez on 25/04/26.
//

import SwiftUI

@main
struct CicloVidaSwiftUIApp: App {
    
    @Environment(\.scenePhase) var scenePhase
    
    init(){
        inicio()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.onChange(of: scenePhase) { (phase) in
            switch phase {
            case .active:
                print("Esta activo")
            case .inactive:
                print("Esta inactivo")
            case .background:
                print("Esta en background")
            @unknown default:
            fatalError("Algo salio mal")
            }
        }
    }
    
    func inicio(){
        print("Primero en ejecutarse")
    }
}
