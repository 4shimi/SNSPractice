//
//  SearchView.swift
//  IstagramPractice
//
//  Created by 정회승 on 2023/07/12.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack(spacing: 12){
                    ForEach(User.MOCK_USERS) { user in
                        NavigationLink(value: user) {
                            HStack {
                            Image(user.profileImageUrl ?? "Character")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                            .clipShape(Circle())
                            
                            VStack(alignment: .leading){
                                Text(user.username)
                                    .fontWeight(.semibold)
                                
                                if let fullname = user.fullname {
                                    Text(fullname)
                                }
                            }
                            .font(.footnote)
    //                        .frame(maxWidth: .infinity, alignment: .leading)
                            Spacer()
                        }
                            .foregroundColor(.black)
                        .padding(.horizontal)
                    }}
                
                }
                //searchable on
                .padding(.top, 8)
                .searchable(text: $searchText, prompt: "search...")
            }
            .navigationDestination(for: User.self, destination: { user in ProfileView(user: user)
            })
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
