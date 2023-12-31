//
//  SettingsView.swift
//  Hike
//
//  Created by Rodrigo Conte Oliveira on 23/11/23.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK: - Properties
    private let alternateAppIcons: [String] = [
        "AppIcon-MagnifyingGlass",
        "AppIcon-Map",
        "AppIcon-Mushroom",
        "AppIcon-Camera",
        "AppIcon-Backpack",
        "AppIcon-Campfire"
    ]
    
    var body: some View {
        List {
            // MARK: - Section Header
            Section {
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        
                        Text("Editors'Choice")
                            .fontWeight(.medium)
                    }
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(
                        colors: [
                            .customGreenLight,
                            .customGreenMedium,
                            .customGreenDark
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .padding(.top, 8)
                
                VStack(spacing: 8) {
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("The hike which looks gorgeous in photos but is even better once you are actually there. The hike that you hope do to again someday. \nFind the best day hike in the app.")
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust off the boots! It's time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
            }
            .listRowSeparator(.hidden)
            
            // MARK: - Section icons
            
            Section(header: Text("Alternate Icons")) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 12) {
                        ForEach(alternateAppIcons.indices, id: \.self) { item in
                            Button {
                                print("icon \(alternateAppIcons[item]) was pressed")
                                
                                UIApplication.shared.setAlternateIconName(alternateAppIcons[item]) {
                                    error in
                                    
                                    if error != nil {
                                        print("Failed request to set app icon: \(String(describing: error?.localizedDescription))")
                                    } else {
                                        print("Success! You have changed the app icon to: \(alternateAppIcons[item])")
                                    }
                                }
                            } label: {
                                Image("\(alternateAppIcons[item])-Preview")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(16)
                            }
                        .buttonStyle(.borderless)
                        }
                    }
                } // : SCROLL VIEW
                .padding(.top, 12)
                
                Text("Choose your favorite app icon from the collection above")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .font(.footnote)
                    .padding(.bottom, 12)
            }// : SECTION ICONS
            .listRowSeparator(.hidden)
            
            // MARK: - Section about
            Section(header: Text("About the app"),
                    footer: HStack {
                        Spacer()
                        Text("Copyright All right reserved")
                        Spacer()
            }) {
                CustomListRowView(
                    rowLabel: "Application",
                    rowIcon: "apps.iphone",
                    rowContent: "Hike",
                    rowTintColor: .blue
                )
                
                CustomListRowView(
                    rowLabel: "Compatibility",
                    rowIcon: "info.circle",
                    rowContent: "iOS",
                    rowTintColor: .red
                )
                
                CustomListRowView(
                    rowLabel: "Technology",
                    rowIcon: "swift",
                    rowContent: "Swift",
                    rowTintColor: .orange
                )
                
                CustomListRowView(
                    rowLabel: "Version",
                    rowIcon: "gear",
                    rowContent: "1.0",
                    rowTintColor: .purple
                )
                
                CustomListRowView(
                    rowLabel: "Developer",
                    rowIcon: "ellipsis.curlybraces",
                    rowContent: "Rodrigo Conte",
                    rowTintColor: .mint
                )
                
                CustomListRowView(
                    rowLabel: "Designer",
                    rowIcon: "paintpalette",
                    rowContent: "Aline Paiva",
                    rowTintColor: .pink
                )
                
                CustomListRowView(
                    rowLabel: "Linkedin",
                    rowIcon: "link",
                    rowTintColor: .indigo,
                    rowLinkLabel: "Profile",
                    rowLinkDestination: "https://www.linkedin.com/in/rodrigo-conte-oliv/"
                    
                )
            }
            
        }// LIST
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
