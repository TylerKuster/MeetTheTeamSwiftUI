//
//  TeammateList.swift
//  Meet the Team
//
//  Created by Tyler Kuster on 6/25/22.
//

import SwiftUI

struct TeammateList: View {
    var body: some View {
        NavigationView {
            List(teammates) { teammate in
                NavigationLink {
                    TeammateDetail(teammate:teammate)
                } label: {
                    TeammateRow(teammate: teammate)
                }
            }
        }.navigationTitle("Meet the Team")
    }
}

struct TeammateList_Previews: PreviewProvider {
    static var previews: some View {
        TeammateList()
    }
}
