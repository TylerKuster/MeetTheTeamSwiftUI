//
//  TeammateRow.swift
//  Meet the Team
//
//  Created by Tyler Kuster on 6/24/22.
//

import SwiftUI

struct TeammateRow: View {
    var teammate: Teammate

    var body: some View {
        HStack(spacing:16) {
            AvatarView(url: teammate.avatar)

            VStack(alignment:.leading) {
                HStack() {
                    Text(teammate.firstName + " " + teammate.lastName).font(Font.custom("Lato-Regular", size: 17))
                    
                }
                Text(teammate.title).font(Font.custom("Lato-Regular", size: 13))
            }
//            Spacer()
//            Image(systemName: "chevron.forward")
        }
    }
}

struct TeammateRow_Previews: PreviewProvider {
    static var previews: some View {
        TeammateList()
    }
}
