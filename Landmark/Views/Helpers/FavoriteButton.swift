//
//  FavoriteButton.swift
//  Landmark
//
//  Created by Pranav Choudhary on 21/08/23.
//

import SwiftUI

struct FavoriteButton: View {
    
    @Binding var isSet: Bool
    
    var body: some View {
        Button{
            isSet.toggle()
        }label: {
            Label("", systemImage: isSet ? "star.fill" : "star").foregroundColor(isSet ? .yellow : .gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
