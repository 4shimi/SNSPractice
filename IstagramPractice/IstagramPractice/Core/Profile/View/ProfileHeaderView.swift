//
//  ProfileHeaderView.swift
//  IstagramPractice
//
//  Created by 정회승 on 2023/07/13.
//

import SwiftUI

struct ProfileHeaderView: View {
    @State private var showEditProfile = false
    
    let user: User

    
    var body: some View {
        VStack (spacing: 10){
            //pic and stats
            HStack{
                Image(user.profileImageUrl ?? "")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                
                Spacer()
                
                HStack(spacing: 8){
                    UserStatView(value: 24, title: "Posts")
                    
                    UserStatView(value: 10, title: "Followers")
                    
                    UserStatView(value: 100, title: "Followings")
                }
                
            }
            .padding(.horizontal)
            
            //name and bio
            VStack(alignment: .leading, spacing: 4){
               
                Text(user.username)
                        .font(.footnote)
                        .fontWeight(.semibold)
                
                if let fullname = user.fullname {
                    Text(fullname)
                        .font(.footnote)
                }
                
                if let bio = user.bio {
                    Text(bio)
                        .font(.footnote)
                }

            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            //action button
            Button{
                if user.isCurrentUser {
                    showEditProfile.toggle()
                } else {
                    print("Follw user..")
                }
            } label: {
                Text(user.isCurrentUser ? "Edit Profile" : "Follow")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .background(user.isCurrentUser ? .white : Color(.systemBlue))
                    .foregroundColor(user.isCurrentUser ?.black : .white)
                    .cornerRadius(6)
                    .overlay(RoundedRectangle(cornerRadius: 6)
                        .stroke(user.isCurrentUser ? .gray : .black, lineWidth: 1)
                    )
            }
            
            Divider()
            
        }
        .fullScreenCover(isPresented: $showEditProfile) {
            EditProfileView(user: user)
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView(user: User.MOCK_USERS[1])
    }
}
