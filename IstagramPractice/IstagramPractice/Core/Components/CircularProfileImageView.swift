//
//  CircularProfileImageView.swift
//  IstagramPractice
//
//  Created by 정회승 on 2023/07/16.
//

import SwiftUI
import Kingfisher

struct CircularProfileImageView: View {
    let user: User
    
    var body: some View {
        if let imageUrl = user.profileImageUrl {
            KFImage(URL(string: imageUrl))
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
        } else {
            Image(systemName: "Character")
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
        }
    }
}

struct CircularProfileImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProfileImageView(user: User.MOCK_USERS[0])
    }
}
