//
//  ViewController.swift
//  tic-tac-toe
//
//  Created by Christopher Moore on 7/1/17.
//  Copyright © 2017 Christopher Moore. All rights reserved.
//

import UIKit

class GridViewController: UIViewController {

    @IBOutlet weak var grid: UIView!
    
    var emojiToUseForPlayer: String!
    var emojiToUseForCP: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        decideFirstPlayer()
        let grid = Grid()
        setupView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupView() {
        var label = UILabel(frame: CGRect(origin: CGPoint(x: 0, y: 40 ), size: CGSize(width: 160, height: 40)))
        label.center.x = self.view.center.x
        label.font = UIFont(name: "System", size: 25)

        label.text = "Player: \(emojiToUseForPlayer!), CP: \(emojiToUseForCP!)"
        label.sizeToFit()
        view.addSubview(label)
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

