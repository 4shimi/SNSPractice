//
//  LoginView.swift
//  IstagramPractice
//
//  Created by 정회승 on 2023/07/13.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                
                Spacer()
                
                //logo Image
                Image("Logo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 80)
                    .padding(.bottom, 10)
                
                //text Fields
                VStack{
                    TextField("Enter Your Email", text: $email)
                        .autocapitalization(.none)
                        .modifier(IGTextFieldModifier())
                    
                    SecureField("password", text: $password)
                        .modifier(IGTextFieldModifier())
                     
                }
                
                Button {
                    print("show forgot password")
                } label: {
                    Spacer()
                    Text("forgot password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top, 10)
                        .padding(.trailing, 28)
                }

                Button {
                    print("Login")
                } label: {
                    Text("Login")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 345, height: 45)
                        .background(Color.mainColor)
                        .cornerRadius(10)

                  }
                .padding(.vertical)
                
                HStack{
                    Rectangle()
                        .frame(width:  (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                    
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Rectangle()
                        .frame(width:  (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                }
                .foregroundColor(.gray)
                
                HStack{
                    Image("instagram")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .scaledToFill()
                    Text("Continue with Instagram")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(.blue)
                        
                }
                .padding(.top, 8)
                
                Spacer()
                
                Divider()
                
                NavigationLink {
                    AddEmailView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack{
                        Text("Don't have an account?")
                        
                        Text("Sign up")
                            .fontWeight(.semibold)

                    
                    }
                    .font(.footnote)
                    
                }
                .padding(.vertical, 16)

            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
