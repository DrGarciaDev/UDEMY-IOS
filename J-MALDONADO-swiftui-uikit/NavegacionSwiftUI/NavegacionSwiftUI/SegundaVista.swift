//
//  SegundaVista.swift
//  NavegacionSwiftUI
//
//  Created by Luis Alberto Garcia Rodriguez on 08/03/26.
//

import SwiftUI

struct SegundaVista: View {
    var texto: String
    
    var body: some View {
        NavigationLink(destination: TercerVista()){
            Text("Ir a Tercer Vista")
        }
        Text("Segunda Vista")
            .navigationTitle(texto)
    }
}

//#Preview {
//    SegundaVista(texto: texto)
//}
