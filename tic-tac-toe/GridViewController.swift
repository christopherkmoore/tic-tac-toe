//
//  ViewController.swift
//  tic-tac-toe
//
//  Created by Christopher Moore on 7/1/17.
//  Copyright © 2017 Christopher Moore. All rights reserved.
//

import UIKit

class GridViewController: UIViewController {

    // MARK: - Outlets    
    @IBOutlet weak var grid: UIView!
    
    var emojiToUseForPlayer: String!
    var emojiToUseForCP: String!
    
    var isPlayerTurn: Bool! = true
    
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        decideFirstPlayer()
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupView()

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // MARK: - View Setup and Logic
    
    func setupView() {
        // Animate the appearance you little shit.
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
    
    func scaleEmojiSize() {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        let touchMatrix = GridLogic.sharedInstance.findBoxForTouch(touch, forView: grid)
        let touchMatrixCGPoint = GridLogic.sharedInstance.plotEmoji(xy: touchMatrix)
        
        if isPlayerTurn {
            var emojiTextLabel = UILabel(frame: CGRect(x: touchMatrixCGPoint.x, y: touchMatrixCGPoint.y, width: 75, height: 75))
            emojiTextLabel.text = emojiToUseForPlayer
            emojiTextLabel.textAlignment = .center
            emojiTextLabel.font = UIFont(name: "System", size: 30)
            emojiTextLabel.center = touchMatrixCGPoint
            grid.addSubview(emojiTextLabel)
        }
        print(view.frame)
        print(grid.frame)
    }
}

