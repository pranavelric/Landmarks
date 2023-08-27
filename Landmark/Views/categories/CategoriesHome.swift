//
//  CategoriesHome.swift
//  Landmark
//
//  Created by Pranav Choudhary on 27/08/23.
//

import SwiftUI

struct CategoriesHome: View {
    @EnvironmentObject var modelData : ModelData
    @State private var showingProfile = false
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
            .listStyle(.inset)
           .navigationTitle("Featured")
           .toolbar{
               Button{
                   showingProfile.toggle()
               }label: {
                   Label("User Profile",systemImage: "person.crop.circle")
               }
           }.sheet(isPresented: $showingProfile){
               ProfileHost().environmentObject(modelData)
           }
        }
    }
}

struct CategoriesHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesHome().environmentObject(ModelData())
    }
}
