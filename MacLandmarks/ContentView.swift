//
//  ContentView.swift
//  MacLandmarks
//
//  Created by Pranav Choudhary on 29/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList().frame(minWidth: 700,minHeight: 700)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}
