//
//  ContentView.swift
//  StateBindingSwiftUI
//
//  Created by Luis Alberto Garcia Rodriguez on 26/04/26.
//

import SwiftUI

struct ContentView: View {
    //Binding: es la conexión entre una propiedad que almacena datos(variable) y una vista que cambia el valor(Textfield)
    
    //state define y administra el estado de una variable, se puede leer en tiempo real y permite hacer binding
    @State private var x = "Titulo"
    var x1 = 2
    
    @State private var show = true
    @State private var numero = 0
    @State private var numeroMoneda1 = 123
    @State private var numeroMoneda2 = "0"

    func suma() -> Int {
        x = "Cambiando su valor" //Si el valor viene de fuera de la función se usa el state
        
        var x2 = 2 //se crea dentro de la función, su scope es solo dentro de esta función
        x2 = 4
        
        return x2
    }
    
    var body: some View {
        VStack {
            Text(x).font(.largeTitle)
            HStack {
                Button (action: {
                    show.toggle()
                    if show {
                        numero -= 1
                    }
                    else {
                        numero += 1
                    }
                }){
                    if show {
                        Image(systemName: "heart").foregroundColor(.red).font(.largeTitle)
                    }
                    else {
                        Image(systemName: "heart.fill").foregroundColor(.red).font(.largeTitle)
                    }
                    Text(String(numero)).bold()
                }
                Button(action:{
                    numeroMoneda1 = numeroMoneda1 + Int(numeroMoneda2)!
                }) {
                    Image(systemName: "dollarsign.circle.fill").foregroundColor(.yellow).font(.largeTitle)
                }
                Text(String(numeroMoneda1))
            }
            TextField("Título", text: $numeroMoneda2).keyboardType(.numberPad).textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("Título", text: $x).textFieldStyle(RoundedBorderTextFieldStyle())
            vista2(x: $x)
            vista3(x: $x)
        }.padding(.all)
    }
}

struct vista2: View {
    @Binding var x: String
    var body: some View {
        Text(x).font(.largeTitle).foregroundColor(.red)
    }
}


struct vista3: View {
    @Binding var x: String
    var body: some View {
        Button(action: {
            x = "Nuevo título"
        }) {
            Text("Cambiar titulo")
        }
    }
}

#Preview {
    ContentView()
}
