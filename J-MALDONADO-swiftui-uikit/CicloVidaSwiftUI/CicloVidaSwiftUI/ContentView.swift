//
//  ContentView.swift
//  CicloVidaSwiftUI
//
//  Created by Luis Alberto Garcia Rodriguez on 25/04/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            print("Aparecio la vista")
        }
        .onDisappear {
            print("Desaparecio la vista")
        }
    }
}

#Preview {
    ContentView()
}
