//
//  ViewController.swift
//  tic-tac-toe
//
//  Created by Christopher Moore on 7/1/17.
//  Copyright © 2017 Christopher Moore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var grid: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        decideFirstPlayer()
        let grid = Grid()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func decideFirstPlayer() {
        let num = arc4random_uniform(UInt32(exactly: 2)!)
    
        if num == 1 {
            print("player goes first")
        } else {
            print("cp goes first")
        }

    }


}

