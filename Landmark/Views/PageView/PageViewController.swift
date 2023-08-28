//
//  PageViewController.swift
//  Landmark
//
//  Created by Pranav Choudhary on 27/08/23.
//

import SwiftUI
import UIKit


struct PageViewController<Page: View>: UIViewControllerRepresentable {
    
    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }
    

    @Binding var currentPage: Int
    var pages: [Page]
    
    
    
    func makeUIViewController(context: Context) -> UIPageViewController{
            let pageViewController = UIPageViewController(
                transitionStyle: .scroll,
                navigationOrientation: .horizontal
            )
        pageViewController.dataSource = context.coordinator
        pageViewController.delegate   = context.coordinator
        return pageViewController
    }
    
    func updateUIViewController(_ uiViewController: UIPageViewController, context: Context) {
        uiViewController.setViewControllers([context.coordinator.controllers[currentPage]], direction: .forward, animated: true)
    }
    
    class Coordinator: NSObject, UIPageViewControllerDataSource, UIPageViewControllerDelegate{
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
                      guard let index = controllers.firstIndex(of: viewController) else {
                          return nil
                      }
                      if index == 0 {
                          return controllers.last
                      }
                      return controllers[index - 1]
        }
        
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
                       guard let index = controllers.firstIndex(of: viewController) else {
                           return nil
                       }
                       if index + 1 == controllers.count {
                           return controllers.first
                       }
                       return controllers[index + 1]
        }
        
        var parent: PageViewController
        var controllers = [UIViewController]()
        init(parent: PageViewController) {
            self.parent = parent
            controllers = self.parent.pages.map{ UIHostingController(rootView: $0)}
        }
        
        
        func pageViewController(
            _ pageViewController: UIPageViewController,
            didFinishAnimating finished: Bool,
            previousViewControllers: [UIViewController],
            transitionCompleted completed: Bool) {
            if completed,
               let visibleViewController = pageViewController.viewControllers?.first,
               let index = controllers.firstIndex(of: visibleViewController) {
                parent.currentPage = index
            }
        }
        
    }
    
}
