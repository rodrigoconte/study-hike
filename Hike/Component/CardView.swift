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
            VStack {
                // MARK:  - Title
                
                Text("Hiking")
                    .fontWeight(.black)
                    .font(.system(size: 50))
                    .foregroundStyle(
                        LinearGradient(
                            colors: [
                                .customGrayLight,
                                .customGrayMedium
                            ],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                
                // MARK: - Main content
                ZStack {
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
                }
                
                // MARK: - Footer
            }
        } //: CARD
        .frame(width: 320, height: 570)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
