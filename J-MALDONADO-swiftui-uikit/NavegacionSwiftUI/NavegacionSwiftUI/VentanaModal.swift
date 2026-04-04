//
//  VentanaModal.swift
//  NavegacionSwiftUI
//
//  Created by Luis Alberto Garcia Rodriguez on 08/03/26.
//

import SwiftUI

struct VentanaModal: View {
    
    @Environment(\.presentationMode) var back
    var texto: String
    
    var body: some View {
        ZStack{
            Color.orange.edgesIgnoringSafeArea(.all)
            VStack{
                Text(texto)
                    .font(.title)
                    .foregroundColor(.white)
                    .bold()
                Button("Cerrar"){
                    back.wrappedValue.dismiss()
                }
            }
        }
    }
}

//#Preview {
//    VentanaModal(texto: texto)
//}
