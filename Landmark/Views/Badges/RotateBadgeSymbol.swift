//
//  RotateBadgeSymbol.swift
//  Landmark
//
//  Created by Pranav Choudhary on 23/08/23.
//

import SwiftUI

struct RotateBadgeSymbol: View {
    let angle: Angle
    var body: some View {
        BadgeSymbol().padding(-60)
            .rotationEffect(angle)
    }
}

struct RotateBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotateBadgeSymbol(angle: Angle(degrees: 5))
    }
}
