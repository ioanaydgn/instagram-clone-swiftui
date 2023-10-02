//
//  ProfileView.swift
//  Instagram
//
//  Created by Mert Aydoğan on 02.10.2023.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        //MARK: Header
        Text("Profile")
            .font(.title3)
            .fontWeight(.semibold)
        VStack(spacing: 10) {
            //MARK: Picture and stats
            HStack {
                Image("me")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                
                Spacer()
                
                HStack(spacing: 8) {
                    UserStatView(value: 5, title: "Post")
                    UserStatView(value: 3, title: "Follower")
                    UserStatView(value: 7, title: "Following")
                }
            }
            .padding(.horizontal)
                
            .padding(.horizontal)
            //MARK: Name and bio
            VStack(alignment: .leading, spacing: 4) {
                Text("Mert Aydogan")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text("BT")
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            .padding(.horizontal)
            //MARK: Action Button
            Button {
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .overlay(RoundedRectangle(cornerRadius: 6)
                        .stroke(Color.gray, lineWidth: 1)
                    )
            }
            
            Divider()
            //MARK: Post grid view
        }
    }
}

#Preview {
    ProfileView()
}
