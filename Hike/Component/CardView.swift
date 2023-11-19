//
//  CardView.swift
//  Hike
//
//  Created by Rodrigo Conte Oliveira on 18/11/23.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            CustomBackgroundView()
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            Color.customIndigoMedium,
                            Color.customSalmonLight
                        ],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                ).frame(width: 256, height: 256)
            
            Image("image-1")
                .resizable() // Permite que o tamanho da imagem seja alterado
                .scaledToFit() // Ajusta a imagem para caber na parent view
        }.padding()
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
