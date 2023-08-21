//
//  LandMarkDetail.swift
//  Landmark
//
//  Created by Pranav Choudhary on 20/08/23.
//

import SwiftUI

struct LandMarkDetail: View {
    var landmark: Landmark
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate).frame(height: 300)
                .ignoresSafeArea(edges: .top)
            
            CircleImage(image: landmark.image).offset(y:-130)
                .padding(.bottom,-130)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                            .font(.title)
                        .foregroundColor(.green)
                        
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
    static var landmarks = ModelData().landmarks
    static var previews: some View {
        LandMarkDetail(landmark: landmarks[0])
    }
}
