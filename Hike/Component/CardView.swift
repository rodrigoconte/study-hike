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
                
                VStack(alignment: .leading) {
                    HStack {
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
                        Spacer()
                        
                        Button {
                            // Action: show as sheet
                            print("Button was pressed")
                        } label: {
                            CustomButton()
                        }
                    }
                    
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }
                .padding(.horizontal, 30)
                
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
                
                Button {
                    // ACTION: Generate a random number
                    print("The button was pressed")
                } label: {
                    Text("Explore more")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [
                                    .customGreenLight,
                                    .customGreenMedium
                                ],
                                startPoint: .top,
                                endPoint: .bottom))
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                }
                .buttonStyle(GradientButton())
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
