//
//  AvatarView.swift
//  Meet the Team
//
//  Created by Tyler Kuster on 6/24/22.
//

import SwiftUI

struct AvatarView: View {
    let url: String

    var body: some View {
        AsyncImage(
            url: URL(string:url)

        ) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .transition(.scale(scale: 0.1, anchor: .center))
            case .failure:
                Image(systemName: "wifi.slash")
            @unknown default:
                EmptyView()
            }
        }
        .frame(width: 64, height: 64)
        .background(Color.gray)
        .clipShape(Circle())
        .overlay(
        Circle()
            .stroke(.blue, lineWidth: 3)
        )
    }
}
