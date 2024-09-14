//
//  LoginView.swift
//  Todo
//
//  Created by Jannik Scheider on 05.04.24.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View{
        NavigationView{
            VStack{
                // Header
                HeaderView(title:"To Do List",
                    subtitle: "Get things done",
                    angle: 15,
                           background: .pink
                )
                // Login form
                Form{
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage).foregroundColor(.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TLButton(title: "Log In", background: .blue){
                        viewModel.login()
                    }.padding()
                }
                .offset(y: -50)
                // Create Account
                VStack{
                    Text("New around here?")
                    
                    NavigationLink(destination: RegisterView()) {
                        Text("Create an account")
                    }
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider{
    static var previews: some View{
        LoginView()
    }
}
