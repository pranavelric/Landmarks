//
//  ContentView.swift
//  Landmark
//
//  Created by Pranav Choudhary on 20/08/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection: Tab = .featured
    @EnvironmentObject var modelData: ModelData
    enum Tab {
        case featured
        case list
    }
    var body: some View {
        
        TabView(selection: $selection){
            CategoriesHome()
                .tabItem{Label("Featured",systemImage: "star")}
                .tag(Tab.featured).environmentObject(modelData)
            LandmarkList()
                .tabItem{
                    Label("List",systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
     
            }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}
