//
//  HikeBadge.swift
//  Landmark
//
//  Created by Pranav Choudhary on 27/08/23.
//

import SwiftUI

struct HikeBadge: View {
    var name:String
    var body: some View {
        VStack(alignment: .center){
            Badge()
                .frame(width: 250,height: 400)
                .scaleEffect(1.0/3.0)
                .frame(width: 100,height: 100)
            Text(name)
                .font(.caption)
                .accessibilityLabel("Badge for \(name).")
        }
    }
}

struct HikeBadge_Previews: PreviewProvider {
    static var previews: some View {
        HikeBadge(name: "Preview Testing")
    }
}
