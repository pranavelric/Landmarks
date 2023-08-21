//
//  LandMarkDetail.swift
//  Landmark
//
//  Created by Pranav Choudhary on 20/08/23.
//

import SwiftUI

struct LandMarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    
    var landmark: Landmark
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }

    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate).frame(height: 300)
                .ignoresSafeArea(edges: .top)
            
            CircleImage(image: landmark.image).offset(y:-130)
                .padding(.bottom,-130)
            
            VStack(alignment: .leading) {
                
                HStack {
                    Text(landmark.name)
                                .font(.title)
                            .foregroundColor(.green)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                        
                HStack {
                    Text(landmark.park)
                      
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
               Divider()
               Text("About \(landmark.name)")
                   .font(.title2)
                Text(landmark.description)
                
            }.padding()
           
        }  .navigationTitle(landmark.name)
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandMarkDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    static var previews: some View {
        LandMarkDetail(landmark: modelData.landmarks[0]) .environmentObject(modelData)
    }
}
