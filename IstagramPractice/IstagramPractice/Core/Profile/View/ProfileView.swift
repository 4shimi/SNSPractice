//
//  ProfileView.swift
//  IstagramPractice
//
//  Created by 정회승 on 2023/07/12.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
    var posts: [Post] {
        return Post.MOCK_POSTS.filter({ $0.user?.username == user.username})
    }
    
    var body: some View {
        
                ScrollView{
                //header

                ProfileHeaderView(user: user)
                    
                //post grid view
                
                    PostGridView(posts: posts)
                }
                .navigationTitle("profile")
                .navigationBarTitleDisplayMode(.inline)

    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: User.MOCK_USERS[2])
    }
}