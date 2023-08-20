//
//  LandmarkList.swift
//  Landmark
//
//  Created by Pranav Choudhary on 20/08/23.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        
        NavigationView {
            List(landmarks){landmark in
                NavigationLink{
                    LandMarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
                
            }.navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
