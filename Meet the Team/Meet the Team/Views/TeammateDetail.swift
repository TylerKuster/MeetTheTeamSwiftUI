//
//  TeammateDetail.swift
//  Meet the Team
//
//  Created by Tyler Kuster on 6/25/22.
//

import SwiftUI

struct TeammateDetail: View {
    let teammate: Teammate

    var body: some View {
        AsyncImage(
            url: URL(string:teammate.avatar)

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
    }
}

//struct TeammateDetail_Previews: PreviewProvider {
//    static var previews: some View {
//        TeammateDetail(url: <#T##String#>)
//    }
//}
