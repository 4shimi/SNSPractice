//
//  MainTabView.swift
//  IstagramPractice
//
//  Created by 정회승 on 2023/07/12.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                }
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            
            Text("Upload Post")
                .tabItem {
                    Image(systemName: "plus.square")
                }
            
            Text("Notification")
                .tabItem {
                Image(systemName: "heart")
            }
            
            CurrentUserProfileView(user: User.MOCK_USERS[1])
                .tabItem {
                    Image(systemName: "person")
                }
        }
        .accentColor(.mainColor)
        
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
