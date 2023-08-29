//
//  ContentView.swift
//  Landmarks Watch App
//
//  Created by Pranav Choudhary on 29/08/23.
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
