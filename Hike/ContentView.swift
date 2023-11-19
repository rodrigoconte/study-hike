//
//  ContentView.swift
//  Hike
//
//  Created by Rodrigo Conte Oliveira on 18/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("image-1")
            .resizable() // Permite que o tamanho da imagem seja alterado
            .scaledToFit() // Ajusta a imagem para caber na parent view
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
