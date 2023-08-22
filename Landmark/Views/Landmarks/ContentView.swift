//
//  ContentView.swift
//  Landmark
//
//  Created by Pranav Choudhary on 20/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList().environmentObject(ModelData())
            }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}
