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
                ForEach(modelData.categories.keys.sorted(),id: \.self){ key in
                    Text(key)
                    
                }
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
