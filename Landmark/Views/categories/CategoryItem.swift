//
//  CategoryItem.swift
//  Landmark
//
//  Created by Pranav Choudhary on 27/08/23.
//

import SwiftUI

struct CategoryItem: View {
    var landmark : Landmark
    var body: some View {
        VStack(alignment: .leading) {
                  landmark.image
                      .resizable()
                      .frame(width: 155, height: 155)
                      .cornerRadius(10)
                  Text(landmark.name)
                      .font(.caption)
              }
              .padding(.leading, 15)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(landmark: ModelData().landmarks[0])
    }
}
