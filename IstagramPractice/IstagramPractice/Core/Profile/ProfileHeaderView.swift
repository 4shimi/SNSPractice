//
//  ProfileHeaderView.swift
//  IstagramPractice
//
//  Created by 정회승 on 2023/07/13.
//

import SwiftUI

struct ProfileHeaderView: View {
    
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
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            //action button
            Button{
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                    .frame(width: 360, height: 32)
                    .overlay(RoundedRectangle(cornerRadius: 6)
                        .stroke(.gray, lineWidth: 1)
                    )
            }
            
            Divider()
            
        }    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView(user: User.MOCK_USERS[1])
    }
}
