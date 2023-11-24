//
//  CustomListRowView.swift
//  Hike
//
//  Created by Rodrigo Conte Oliveira on 24/11/23.
//

import SwiftUI

struct CustomListRowView: View {
    // MARK: - Properties
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String? = nil
    @State var rowTintColor: Color
    @State var rowLinkLabel: String? = nil
    @State var rowLinkDestination: String? = nil
    
    var body: some View {
        LabeledContent {
            if let rowContent = rowContent {
                Text(rowContent)
                    .foregroundColor(.primary)
                    .fontWeight(.heavy)
            } else if let linkLabel = rowLinkLabel,
                      let linkDestination = rowLinkDestination,
                      let linkDestinationURL = URL(string: linkDestination) {
                Link(destination: linkDestinationURL) {
                    Text(linkLabel)
                        .foregroundColor(.pink)
                        .underline()
                        .fontWeight(.heavy)
                }
            } else {
                EmptyView()
            }
            
        } label: {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundColor(rowTintColor)
                    Image(systemName: rowIcon)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                
                Text(rowLabel)
            }
        }
    }
}

struct CustomListRowView_Previews: PreviewProvider {
    static var previews: some View {
        List() {
            CustomListRowView(
                rowLabel: "Website",
                rowIcon: "globe",
                rowTintColor: .pink,
                rowLinkLabel: "Credo",
                rowLinkDestination: "https://credo.academy.com"
            )
        }
    }
}
