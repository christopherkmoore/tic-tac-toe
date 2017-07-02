//
//  Grid.swift
//  tic-tac-toe
//
//  Created by Christopher Moore on 7/1/17.
//  Copyright © 2017 Christopher Moore. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class Grid: UIView {
    
    override func draw(_ rect: CGRect) {
        let y1 = UIBezierPath(rect: CGRect(x: bounds.width / 20 * 6, y: bounds.height / 10 * 2, width: 0, height: 0))
        
        y1.addLine(to: CGPoint(x: bounds.width / 20 * 6, y: bounds.height / 20 * 15))
        y1.lineWidth = 5
        y1.stroke()
        y1.fill()
        
        let y2 = UIBezierPath(rect: CGRect(x: (bounds.width / 20) * 14, y: bounds.height / 10 * 2, width: 0, height: 0))
        y2.addLine(to: CGPoint(x: (bounds.width / 20) * 14, y: bounds.height / 20 * 15))
        y2.lineWidth = 5
        y2.stroke()
        
        let x1 = UIBezierPath(rect: CGRect(origin: CGPoint(x: bounds.width / 10 , y: bounds.height / 20 * 7), size: CGSize.zero))
        
        x1.addLine(to: CGPoint(x: bounds.width / 10 * 9, y: bounds.height / 20 * 7))
        x1.lineWidth = 5
        x1.stroke()
        
        let x2 = UIBezierPath(rect: CGRect(origin: CGPoint(x: bounds.width / 10, y: bounds.height / 10 * 6), size: CGSize.zero))
        x2.addLine(to: CGPoint(x: bounds.width / 10 * 9, y: bounds.height / 10 * 6))
        x2.lineWidth = 5
        x2.stroke()
        
        
//        rect.UIColor.setFill(.black)
        
    }
    
    
}
