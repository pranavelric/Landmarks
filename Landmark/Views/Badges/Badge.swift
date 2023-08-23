//
//  Badge.swift
//  Landmark
//
//  Created by Pranav Choudhary on 23/08/23.
//

import SwiftUI

struct Badge: View {
    var badgeSymbols: some View{
        ForEach(0..<8){index in
            RotateBadgeSymbol(angle: .degrees(Double(index)/Double(8) * 360.0))
        }
    }
    var body: some View {
        ZStack{
            BadgeBackground()
            GeometryReader{ geometry in
                badgeSymbols.scaleEffect(1.4/4.0,anchor: .top)
                    .position(x: geometry.size.width/2.0,y: (3.3/4.0) * geometry.size.height)
            }
        }
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
