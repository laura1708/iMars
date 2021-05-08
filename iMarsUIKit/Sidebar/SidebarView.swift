////
////  TestView.swift
////  iMars
////
////  Created by Mariia Zhurina on 18/03/2021.
////
//
//import SwiftUI
//enum SidearLibraryItems: String, CaseIterable {
//    case all = "All"
//    case pod = "Photo of the day"
//    case photos = "Photos"
//    case videos = "Video"
//    case articles = "Articles"
//    
//    
//    func systemName() -> String {
//        switch self{
//        case.all:
//            return "server.rack"
//        case.photos:
//            return "photo.fill.on.rectangle.fill"
//        case.videos:
//            return "video.fill"
//        case.articles:
//            return "newspaper.fill"
//        case.pod :
//            return "calendar"
//            
//        }
//        
//    }
//    
//    func view() -> AnyView {
//        switch self {
//        case .all:
//            return AnyView(PodView())
//        case .photos:
//            return AnyView(StructurePhotosView())
//        case .videos:
//            return AnyView(VideoView())
//        case .articles:
//            return AnyView(ArticlesView())
//        case .pod:
//            return AnyView(PodView())
//        }
//    }
//}
//
//enum Sidbar3Dlibrary: String, CaseIterable {
//    case all = "All"
//    case mars = "Mars"
//    case rovers = "Rovers"
//    case sondes = "Sondes"
//    
//    func systemName() -> String {
//        switch self{
//        case.all:
//            return "server.rack"
//        case.mars:
//            return "photo.fill.on.rectangle.fill"
//        case.rovers:
//            return "video.fill"
//        case.sondes:
//            return "newspaper.fill"
//        }
//        
//    }
//    
//    func view() -> AnyView {
//        return AnyView(MapView())
//    }
//}
//
//struct SidebarRow: View {
//    let title: String
//    let systemImageName: String
//    
//    var body: some View {
//        HStack {
//            Image(systemName: systemImageName)
//            Text(title)
//        }
//    }
//}
//
//struct SidebarHeaderView: View {
//    let title: String
//    
//    var body: some View {
//        Text(title)
//            .foregroundColor(.black)
//            .fontWeight(.bold)
//            .font(.title)
//    }
//}
//
//// TODO : Garder en mémoire l'emplacement de l'utilisateur
//
//struct SidebarView: View {    
//    var body: some View {
//        List {
//            Section(header: SidebarHeaderView(title: "Mars")) {
//                NavigationLink(
//                    destination: MarsScreen(),
//                    label: {
//                        SidebarRow(title: "Mars", systemImageName: "map")
//                    })
//            }
//            Section(header:SidebarHeaderView (title: "Library")) {
//                ForEach(SidearLibraryItems.allCases, id: \.self) { item in
//                    NavigationLink(
//                        destination: item.view(),
//                        label: {
//                            SidebarRow(title: item.rawValue, systemImageName: item.systemName())
//                        })
//                }
//            }
//            Section(header: SidebarHeaderView (title: "3D Models")) {
//                ForEach(Sidbar3Dlibrary.allCases, id: \.self) { item in
//                    NavigationLink(
//                        destination: item.view(),
//                        label: {
//                            SidebarRow(title: item.rawValue, systemImageName: item.systemName())
//                        })
//                }
//            }
//            Section(header: SidebarHeaderView (title: "Saved")) {
//                NavigationLink(
//                    destination: SavedView(),
//                    label: {
//                        Text("Saved")
//                    })
//            }
//        }
//        .listStyle(SidebarListStyle())
//        .navigationViewStyle(DoubleColumnNavigationViewStyle())
//    }
//}
//
//struct SidebarView_Previews: PreviewProvider {
//    static var previews: some View {
//        SidebarView()
//    }
//}
//
