//
//  PageView.swift
//  Landmark
//
//  Created by Pranav Choudhary on 27/08/23.
//

import SwiftUI

struct PageView<Page:View>: View {
    var pages: [Page]
    @State private var currentPage = 0
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            PageViewController(currentPage: $currentPage, pages: pages)
            PageControl(numberOfPages: pages.count, currentPage: $currentPage)
                .frame(width: CGFloat(pages.count * 18))
                .padding(.trailing)
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
                   .aspectRatio(3 / 2, contentMode: .fit)
    }
}
