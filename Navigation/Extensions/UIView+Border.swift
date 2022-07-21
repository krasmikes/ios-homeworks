//
//  UIView+Border.swift
//  Navigation
//
//  Created by Михаил Апанасенко on 14.07.22.
//

import UIKit

// Taken from https://stackoverflow.com/questions/53908783/border-bottom-in-uiview-swift-4

extension UIView {

    enum ViewSide {
        case left, right, top, bottom
    }

    func addBorder(toSide side: ViewSide, withColor color: CGColor, andThickness thickness: CGFloat) {

        let border = CALayer()
        border.backgroundColor = color

        switch side {
        case .left: border.frame = CGRect(x: frame.minX, y: frame.minY, width: thickness, height: frame.height)
        case .right: border.frame = CGRect(x: frame.maxX, y: frame.minY, width: thickness, height: frame.height)
        case .top: border.frame = CGRect(x: frame.minX, y: frame.minY, width: frame.width, height: thickness)
        case .bottom: border.frame = CGRect(x: frame.minX, y: frame.maxY, width: frame.width, height: thickness)
        }

        layer.addSublayer(border)
    }
}
