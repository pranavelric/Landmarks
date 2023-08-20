//
//  ContentView.swift
//  Landmark
//
//  Created by Pranav Choudhary on 20/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView().frame(height: 300)
                .ignoresSafeArea(edges: .top)
            
            CircleImage().offset(y:-130)
                .padding(.bottom,-130)
            
            VStack(alignment: .leading) {
                        Text("Turtke Rock")
                            .font(.title)
                        .foregroundColor(.green)
                        
                HStack {
                    Text("Joshua Tree National Park")
                      
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
               Divider()
               Text("About Turtle Rock")
                   .font(.title2)
               Text("Descriptive text goes here.")
                
            }.padding()
            Spacer()
        }
                
            }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
