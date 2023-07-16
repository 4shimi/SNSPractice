//
//  UploadPostVIew.swift
//  IstagramPractice
//
//  Created by 정회승 on 2023/07/13.
//

import SwiftUI
import PhotosUI

struct UploadPostVIew: View {
    @State private var caption = ""
    @State private var imagePickerPresented = false
    @StateObject var viewModel = UploadPostViewModel()
    @Binding var tabIndex: Int
    
    var body: some View {
        VStack{
            // action tool bar
            HStack{
                Button {
                    clearPostDataAndReturnToFeed()
                } label: {
                    Text("Cancel")
                        .fontWeight(.semibold)

                }
                
                Spacer()
                
                Text("New Post")
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button {
                    Task {
                        try await viewModel.uploadPost(caption: caption)
                       clearPostDataAndReturnToFeed()
                    }
                } label: {
                    Text("Upload")
                        .fontWeight(.semibold)

                }
                
            }
            .padding(.horizontal)
            
            // post image and caption
            HStack(spacing: 8){
                if let image = viewModel.postImage {
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .clipped()
                }
                
                TextField("Enter your caption...", text: $caption, axis: .vertical)
            }
            .padding()
            
            Spacer()
            
        }
        .onAppear{
            imagePickerPresented.toggle()
        }
        .photosPicker(isPresented: $imagePickerPresented, selection: $viewModel.selectedImage)
    }
    func clearPostDataAndReturnToFeed() {
        caption = ""
        viewModel.selectedImage = nil
        viewModel.postImage = nil
        tabIndex = 0
    }
}

struct UploadPostVIew_Previews: PreviewProvider {
    static var previews: some View {
        UploadPostVIew(tabIndex: .constant(0))
    }
}
