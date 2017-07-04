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
    
    func findBoxForTouch(_ touch: UITouch, forView view: UIView) {
        
        // a bit tight near the edges, but works.
        
        let totalX = view.frame.width
        let totalY = view.frame.height
        
        let touchX = touch.location(in: view).x
        let touchY = touch.location(in: view).y
        
        print("my name is \(view)")
        if touchX < totalX / 3 {
            print("x1 \n")
        }
        if touchX < totalX / 3 * 2 && touchX > totalX / 3 {
            print("x2 \n")
        }
        if touchX > totalX / 3 * 2 {
            print("x3 \n")
        }
        
        if touchY < totalY / 3 {
            print("y1 \n")
        }
        if touchY < totalY / 3 * 2 && touchY > totalY / 3 {
            print("y2 \n")
        }
        if touchY > totalY / 3 * 2 {
            print("y3 \n")
        }
    }
}
