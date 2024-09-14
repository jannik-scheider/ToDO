//
//  ProfileView.swift
//  Todo
//
//  Created by Jannik Scheider on 06.04.24.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                if let user = viewModel.user {
                    profile(user: user)
                }else {
                    Text("Loading Profile ...")
                }
            }
            .navigationTitle("Profile")
        }
        .onAppear(){
            viewModel.fetchUser()
        }
    }
    
    @ViewBuilder
    func profile(user: User) -> some View{
        Image(systemName: "person.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(Color.blue)
            .frame(width: 125, height: 125)
            .padding()
        
        // Info: Name, Email, Member since
        VStack(alignment: .leading){
            HStack{
                Text("Name: ")
                    .bold()
                    .padding()
                Text("user.name")
            }
            HStack{
                Text("Email: ")
                    .bold()
                    .padding()
                Text("user.email")
            }
            HStack{
                Text("Member Since: ")
                    .bold()
                    .padding()
                Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
            }
            
        }
        .padding()
        
        // Sign out
        Button("Log Out"){
            viewModel.logOut()
        }
        .tint(.red)
        .padding()
        
        Spacer()
    }
}

#Preview {
    ProfileView()
}
