//
//  UserStatView.swift
//  Instagram
//
//  Created by Mert Aydoğan on 02.10.2023.
//

import SwiftUI

struct UserStatView: View {
    let value: Int
    let title: String
    var body: some View {
        VStack {
            Text("\(value)")
                .font(.footnote)
                .fontWeight(.semibold)
            Text(title)
                .font(.footnote)
        }
        .frame(width: 76)
    }
}

#Preview {
    UserStatView(value: 5, title: "Posts")
}
