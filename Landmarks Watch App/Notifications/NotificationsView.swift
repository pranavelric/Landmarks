//
//  NotifivationsView.swift
//  Landmarks Watch App
//
//  Created by Pranav Choudhary on 29/08/23.
//

import SwiftUI

struct NotificationsView: View {
    var title: String?
    var message: String?
    var landmark: Landmark?
    
    var body: some View {
        VStack {
                 if landmark != nil {
                     CircleImage(image: landmark!.image.resizable())
                         .scaledToFit()
                 }


                 Text(title ?? "Unknown Landmark")
                     .font(.headline)


                 Divider()


                 Text(message ?? "You are within 5 miles of one of your favorite landmarks.")
                     .font(.caption)
             }
             .lineLimit(0)
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView(title: "Turtle Rock",
                                   message: "You are within 5 miles of Turtle Rock.",
                                   landmark: ModelData().landmarks[0])
    }
}
