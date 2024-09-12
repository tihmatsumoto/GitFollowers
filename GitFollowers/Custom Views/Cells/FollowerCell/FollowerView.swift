//
//  FollowerView.swift
//  GitFollowers
//
//  Created by Tiemi Matsumoto on 12/09/2024.
//

import SwiftUI

//how to slowly add some swiftUI

struct FollowerView: View {
    var follower: Follower
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: follower.avatarUrl)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } placeholder: {
                Image("avatar-placeholder")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            .clipShape(Circle()) //just to differentiate between UIKit and SwiftUI
            
            Text(follower.login)
                .bold()
                .lineLimit(1)
                .minimumScaleFactor(0.6)
        }
    }
}

#Preview {
    FollowerView(follower: Follower(login: "tihmatsumoto", avatarUrl: ""))
}
