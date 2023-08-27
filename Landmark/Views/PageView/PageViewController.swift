//
//  PageViewController.swift
//  Landmark
//
//  Created by Pranav Choudhary on 27/08/23.
//

import SwiftUI
import UIKit


struct PageViewController<Page: View>: UIViewControllerRepresentable {
    func updateUIViewController(_ uiViewController: UIPageViewController, context: Context) {
        uiViewController.setViewControllers([UIHostingController(rootView: pages[0])], direction: .forward, animated: true)
    }
    
    var pages: [Page]
    
    func makeUIViewController(context: Context) -> UIPageViewController{
            let pageViewController = UIPageViewController(
                transitionStyle: .scroll,
                navigationOrientation: .horizontal
            )
        return pageViewController
    }
    
}
