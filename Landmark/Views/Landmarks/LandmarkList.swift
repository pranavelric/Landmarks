//
//  LandmarkList.swift
//  Landmark
//
//  Created by Pranav Choudhary on 20/08/23.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = false
    @EnvironmentObject var modelData: ModelData
    @State private var filter = FilterCategory.all
    
    enum FilterCategory: String, CaseIterable, Identifiable{
      case all = "All"
      case lakes = "Lakes"
      case rivers = "Rivers"
      case mountains = "Mountains"

      var id: FilterCategory { self }
    }
    
    var filteredLandmarks:[Landmark]{
        modelData.landmarks.filter{ landmark in
            (!showFavoritesOnly || landmark.isFavorite)
            && (filter == .all || filter.rawValue == landmark.category.rawValue)
        }
    }
    
    var title:String{
        let title = filter == .all ? "Landmarks" : filter.rawValue
        return showFavoritesOnly ? "Favorite \(title)" : title
    }
    
    var body: some View {
        
        NavigationView {
            List{
//                Toggle(isOn: $showFavoritesOnly, label: {
//                    Text("Favorites only")
//                })
                ForEach(filteredLandmarks){landmark in
                    NavigationLink{
                        LandMarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                    
                }
            }.navigationTitle(title)
                .frame(minWidth: 300)
                .toolbar{
                    ToolbarItem{
                        Menu{
                            
                            Picker("Category", selection: $filter) {
                                     ForEach(FilterCategory.allCases) { category in
                                         Text(category.rawValue).tag(category)
                                     }
                                 }
                                 .pickerStyle(.inline)
                            
                            Toggle(isOn: $showFavoritesOnly, label: {
                                Label("Favorites only", systemImage: "star.fill")
                            })
                        } label: {
                            Label("Filter",systemImage: "slider.horizontal.3")
                        }
                    }
                }
            Text("Select a Landmark")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList().environmentObject(ModelData())
    }
}
