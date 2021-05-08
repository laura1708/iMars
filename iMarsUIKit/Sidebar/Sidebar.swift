//
//  Sidebar.swift
//  iMarsUIKit
//
//  Created by Kevin MASLOWSKI on 21/03/2021.
//

import SwiftUI

enum Menu: Hashable {
    case mars, libAll, photos, videos, articles, dAll, dMars, rovers, sondes, saved
}

struct SidebarHeader: View {
    let title: String
    
    var body: some View {
        Text(title)
            .foregroundColor(.black)
            .fontWeight(.bold)
    }
}

struct SidebarNavigationLink: View {
    let destination: AnyView
    let tag: Menu
    @Binding var selection: Menu?
    let imageLabel: String
    let textLabel: String
    
    var body: some View {
        NavigationLink(
            destination: destination,
            tag: tag,
            selection: $selection,
            label: {
                Image(systemName: "\(imageLabel)")
                    .foregroundColor(selection == tag ? Color.white : Color(UIColor(named: "blueiMars")!))
                Text("\(textLabel)")
                
            }
        )
        .foregroundColor(selection == tag ? Color.white : Color.black)
        .background(Rectangle()
                        .fill(selection == tag ? Color(UIColor(named: "rediMars")!) : Color.clear)
                        .cornerRadius(7)
                        .padding(.leading, -10)
                        .frame(width: 280, height: 45), alignment: .leading)
    }
}



struct Sidebar: View {
    
    @State private var selection: Menu? = Menu.mars
    
    var body: some View {
        NavigationView {
            List {
                Section(header: SidebarHeader(title: "Mars")) {
                    SidebarNavigationLink(destination: AnyView(MarsScreen()),
                                          tag: Menu.mars,
                                          selection: self.$selection,
                                          imageLabel: "map",
                                          textLabel: "Mars"
                    )
                }
                
                Section(header: SidebarHeader(title: "Library")) {
                    SidebarNavigationLink(destination: AnyView(MarsScreen()),
                                          tag: Menu.libAll,
                                          selection: self.$selection,
                                          imageLabel: "server.rack",
                                          textLabel: "All"
                    )
                    SidebarNavigationLink(destination: AnyView(StructurePhotosView()),
                                          tag: Menu.photos,
                                          selection: self.$selection,
                                          imageLabel: "photo.fill.on.rectangle.fill",
                                          textLabel: "Photos"
                    )
                    SidebarNavigationLink(destination: AnyView(VideoGrid(video: Video.data)),
                                          tag: Menu.videos,
                                          selection: self.$selection,
                                          imageLabel: "video.fill",
                                          textLabel: "Videos"
                    )
                    SidebarNavigationLink(destination: AnyView(ArticleList()),
                                          tag: Menu.articles,
                                          selection: self.$selection,
                                          imageLabel: "newspaper.fill",
                                          textLabel: "Articles"
                    )
                }
                
                
                Section(header: SidebarHeader(title: "3D Models")) {
                    SidebarNavigationLink(destination: AnyView(Model3DView(item: Model3D.model[0])),
                                          tag: Menu.dAll,
                                          selection: self.$selection,
                                          imageLabel: "server.rack",
                                          textLabel: "All"
                    )
//                    SidebarNavigationLink(destination: AnyView(MarsScreen()),
//                                          tag: Menu.dMars,
//                                          selection: self.$selection,
//                                          imageLabel: "photo.fill.on.rectangle.fill",
//                                          textLabel: "Mars"
//                    )
//                    SidebarNavigationLink(destination: AnyView(MarsScreen()),
//                                          tag: Menu.rovers,
//                                          selection: self.$selection,
//                                          imageLabel: "video.fill",
//                                          textLabel: "Rovers"
//                    )
//                    SidebarNavigationLink(destination: AnyView(MarsScreen()),
//                                          tag: Menu.sondes,
//                                          selection: self.$selection,
//                                          imageLabel: "newspaper.fill",
//                                          textLabel: "Sondes"
//                    )
                }
                
                Section(header: SidebarHeader(title: "Saved")) {
                    SidebarNavigationLink(destination: AnyView(SavedView()),
                                          tag: Menu.saved,
                                          selection: self.$selection,
                                          imageLabel: "square.and.arrow.down",
                                          textLabel: "Saved"
                    )
                }
            }
            .listStyle(SidebarListStyle())
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(DoubleColumnNavigationViewStyle())
        
    }
}

struct Sidebar_Previews: PreviewProvider {
    static var previews: some View {
        Landscape {
            Sidebar()
        }
    }
}
