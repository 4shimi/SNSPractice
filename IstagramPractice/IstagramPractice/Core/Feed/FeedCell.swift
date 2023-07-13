//
//  FeedCell.swift
//  IstagramPractice
//
//  Created by 정회승 on 2023/07/12.
//

import SwiftUI

struct FeedCell: View {
    let post: Post
    
    var body: some View {
        VStack{
            //image&username
            HStack{
                if let user = post.user{
                    Image(user.profileImageUrl ?? "")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    
                    Text(user.username)
                        .font(.system(size: 20, design: .rounded))
                        .fontWeight(.bold)
                }
                    
                
                Spacer()
            }
            .padding(.leading)
            
            //post image
            
            
            Image(post.imageUrl)
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            
            //actionbuttons
            
            HStack{
                Button {
                    print("Like your post")
                } label: {
                    Image(systemName: "heart")
                    .font(.system(size: 33))
                }
                
                Button {
                    print("Comment on post")
                } label: {
                    Image(systemName: "bubble.right")
                    .font(.system(size: 30))
                }
                
                Button {
                    print("share the post")
                } label: {
                    Image(systemName: "paperplane")
                    .font(.system(size: 30))
                }
                Spacer()
            }
            .padding(.leading, 8)
            .padding(.top, 4)
            .foregroundColor(.black)
            
            //likes label
            Text("\(post.likes) likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
            
            //caption label
            
            HStack{
                Text("\(post.user?.username ?? "") ")
                    .fontWeight(.bold) +
                Text("\(post.caption)")
            }
            .font(.footnote)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 10)
            .padding(.top, 1)
            
            Text("6h ago")
                .font(.footnote)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
                .foregroundColor(.gray)
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell(post: Post.MOCK_POSTS[1])
    }
}
