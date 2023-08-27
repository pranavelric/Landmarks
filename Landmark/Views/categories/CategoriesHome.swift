//
//  CategoriesHome.swift
//  Landmark
//
//  Created by Pranav Choudhary on 27/08/23.
//

import SwiftUI

struct CategoriesHome: View {
    @EnvironmentObject var modelData : ModelData
    var body: some View {
        NavigationView{
            List{
                modelData.features[0].image.resizable()
                    .scaledToFill().frame(height: 200)
                    .clipped().listRowInsets(EdgeInsets())
                ForEach(modelData.categories.keys.sorted(),id: \.self){ key in
                    
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }.listRowInsets(EdgeInsets())
            }
           .navigationTitle("Featured")
        }
    }
}

struct CategoriesHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesHome().environmentObject(ModelData())
    }
}
