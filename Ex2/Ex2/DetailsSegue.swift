//
//  DetailsSegue.swift
//  Ex2
//
//  Created by Lee Wolf on 12/05/2022.
//

import UIKit

protocol DetailsSegueDelegate {
    func getContainerView(forSegueIdentifier: String) -> UIView
}

class DetailsSegue: UIStoryboardSegue {

    override func perform() {
        source.addChild(destination)
        let parentVC = source as! DetailsSegueDelegate
        let containerView = parentVC.getContainerView(forSegueIdentifier: self.identifier!)
        destination.view.frame = containerView.frame
        destination.view.frame.origin = CGPoint(x: 0, y: 0)
        containerView.addSubview(destination.view)
    }
}
