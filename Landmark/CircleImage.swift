//
//  CircleImage.swift
//  Landmark
//
//  Created by Pranav Choudhary on 20/08/23.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
       Image("turtlerock")
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white,lineWidth: 5)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
