//
//  MainTabView.swift
//  Instagram
//
//  Created by Mert Aydoğan on 02.10.2023.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            FeedView()
                .tabItem { Image(systemName: "house") }
            Text("Search")
                .tabItem { Image(systemName: "magnifyingglass") }
            Text("Upload Post")
                .tabItem { Image(systemName: "plus.square") }
            Text("Notification")
                .tabItem { Image(systemName: "heart") }
            ProfileView()
                .tabItem { Image(systemName: "person.circle") }
        }
        .accentColor(.black)
    }
}

#Preview {
    MainTabView()
}
