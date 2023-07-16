//
//  CurrentUserProfileView.swift
//  IstagramPractice
//
//  Created by 정회승 on 2023/07/13.
//

import SwiftUI

struct CurrentUserProfileView: View {
    
    let user: User
    
    var body: some View {
        NavigationStack{
            ScrollView{
                //header
                ProfileHeaderView(user: user)
                
                //post grid view
                
                PostGridView(user: user)
//                LazyVGrid(columns: gridItems, spacing: 1){
//                    ForEach(0 ..< 24, id: \.self) { index in
//                        Image("\(index + 1)")
//                            .resizable()
//                            .scaledToFill()
//                            .frame(width: UIScreen.main.bounds.width/3, height: UIScreen.main.bounds.width/3, alignment: .center)
//                            .clipped()
//                    }
//
//                }
            }
            .navigationTitle("profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        AuthService.shared.signout()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

struct CurrentUserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentUserProfileView(user: User.MOCK_USERS[2])
    }
}
