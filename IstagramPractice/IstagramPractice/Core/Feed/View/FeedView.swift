//
//  FeedView.swift
//  IstagramPractice
//
//  Created by 정회승 on 2023/07/12.
//

import SwiftUI

struct FeedView: View {
    @StateObject var viewModel = FeedViewModel()

    
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack(spacing: 32) {
                    ForEach(viewModel.posts) { post in
                        FeedCell(post: post)
                    }
                }
                .padding(.top, 8)
            }.navigationTitle("Feed")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading){
                        Image("Logo")
                            .resizable()
                            .frame(width: 80, height: 34)
                    }
                    ToolbarItem(placement: .navigationBarTrailing){
                        Image(systemName: "paperplane")
                            .imageScale(.large)
                            .foregroundColor(.mainColor)
                    }
                }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
