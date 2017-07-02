//
//  SetCharViewController.swift
//  tic-tac-toe
//
//  Created by Christopher Moore on 7/1/17.
//  Copyright © 2017 Christopher Moore. All rights reserved.
//

import Foundation
import UIKit

class SetEmojiViewController: UIViewController {
    
    @IBOutlet weak var setEmojiLabel: UILabel!
    @IBOutlet weak var setEmojiButton: UIButton!
    @IBOutlet weak var setEmojiTextField: UITextField!
    let emojiConverter = EmojiValidator()
    
    @IBAction func setEmoji(_ sender: UIButton) {
    
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setEmojiTextField.delegate = self
        emojiConverter.convertEmoji(forString: "hello world")
    }
    
    
    
}

extension SetEmojiViewController: UITextFieldDelegate {
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return false
    }
    
}
