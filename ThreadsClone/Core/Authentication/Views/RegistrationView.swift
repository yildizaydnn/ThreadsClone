//
//  RegistrationView.swift
//  ThreadsClone
//
//  Created by Yıldız Aydın on 23.06.2025.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @State private var username = ""
    @Environment(\.dismiss) var dismiss


    
    
    var body: some View {
        VStack{
            Spacer()
            
            Image("icon.thre")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding()
            
            VStack{
                TextField("Enter your email" , text: $email)
                    .modifier(ThreadsTextFieldModifier())
                
                SecureField("Enter your password ", text: $password)
                    .modifier(ThreadsTextFieldModifier())
                
                TextField("Enter fullname" , text: $fullname)
                    .modifier(ThreadsTextFieldModifier())
               
                TextField("Enter your username" , text: $username)
                    .modifier(ThreadsTextFieldModifier())
                
            }
            Button {
              dismiss()
            } label: {
                Text("Sign Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 352, height: 44)
                    .background(.black)
                    .cornerRadius(8)
                
            }
            .padding(.vertical)
            
            Spacer()
           
            Divider()
            
            Button {
                dismiss()
            } label: {
                HStack(spacing: 3) {
                    Text("Already have an account?")
                }
                
                Text("Sign In")
                    .fontWeight(.semibold)
            }
            .foregroundStyle(.black)
            .font(.footnote)
            }
        .padding(.vertical, 16)

        }
    }


#Preview {
    RegistrationView()
}
