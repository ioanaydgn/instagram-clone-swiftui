//
//  ComplateSignUpView.swift
//  Instagram
//
//  Created by Mert Aydoğan on 03.10.2023.
//

import SwiftUI

struct ComplateSignUpView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Spacer()
        
        VStack(spacing: 12) {
            Text("Wellcome to Instagram, Apple")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("Click below to complete registration and start using Instagram.")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            Button {
                print("Complete sign up")
            } label: {
                Text("Complete sign up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(8)
            }
            .padding(.vertical)
            
            Spacer()
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
    }
}

#Preview {
    ComplateSignUpView()
}
