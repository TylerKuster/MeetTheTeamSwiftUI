//
//  Teammate.swift
//  Meet the Team
//
//  Created by Tyler Kuster on 6/24/22.
//

import Foundation
import SwiftUI

struct Teammate: Hashable, Codable, Identifiable {
    var id: String
    var avatar: String
    var bio: String
    var firstName: String
    var lastName: String
    var title: String

    var image: AsyncImage<Image> {
        AsyncImage(url: URL(string: avatar))
    }
}
