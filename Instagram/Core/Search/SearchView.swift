//
//  SearchView.swift
//  Instagram
//
//  Created by Mert Aydoğan on 03.10.2023.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 12) {
                    ForEach(0 ... 15, id:\.self) { user in
                        HStack {
                            Image("me")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            VStack (alignment: .leading) {
                                Text("ioanaydgn")
                                    .fontWeight(.semibold)
                                
                                Text("Mert Aydogan")
                                
                            }
                            .font(.footnote)
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                    }
                }
                .searchable(text: $searchText, prompt: "Search")
                .padding(.top, 10)
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SearchView()
}
