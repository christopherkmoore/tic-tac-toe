//
//  GridLogic.swift
//  tic-tac-toe
//
//  Created by Christopher Moore on 7/4/17.
//  Copyright © 2017 Christopher Moore. All rights reserved.
//

import Foundation
import UIKit

class GridLogic {
    
    static var sharedInstance = GridLogic()
    
    func findBoxForTouch(_ touch: UITouch, forView view: UIView) -> (Int, Int) {
        
        // a bit tight near the edges, but works.
        var returnX: Int?
        var returnY: Int?
        
        let totalX = view.frame.width
        let totalY = view.frame.height
        
        let touchX = touch.location(in: view).x
        let touchY = touch.location(in: view).y
        
        print("touchX = \(touchX); touchY = \(touchY)")
        if touchX < totalX / 3 {
            returnX = 1
        }
        if touchX < totalX / 3 * 2 && touchX > totalX / 3 {
            returnX = 2
        }
        if touchX > totalX / 3 * 2 {
            returnX = 3
        }
        
        if touchY < totalY / 3 {
            returnY = 1
        }
        if touchY < totalY / 3 * 2 && touchY > totalY / 3 {
            returnY = 2
        }
        if touchY > totalY / 3 * 2 {
            returnY = 3
        }
        
        return (returnX!, returnY!)
    }
    
    func plotEmoji(xy: (Int, Int)) -> CGPoint {
        let offsetX = 20
        let offsetY = 100
        
        switch xy {
        case (1, 1):
            return CGPoint(x: 48, y: 166)
        case (1, 2):
            return CGPoint(x: 48, y: 300)
        case (1, 3):
            return CGPoint(x: 48, y: 437)
        case (2, 1):
            return CGPoint(x: 182, y: 166)
        case (2, 2):
            return CGPoint(x: 182, y: 300)
        case (2, 3):
            return CGPoint(x: 182, y: 437)
        case (3, 1):
            return CGPoint(x: 319, y: 166)
        case (3, 2):
            return CGPoint(x: 319, y: 300)
        case (3, 3):
            return CGPoint(x: 319, y: 437)
        default:
            break
        }
        return CGPoint()
    }
}
