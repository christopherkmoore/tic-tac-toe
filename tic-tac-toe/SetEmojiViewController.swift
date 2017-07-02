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
    }
    
    
    
}

extension SetEmojiViewController: UITextFieldDelegate {
    
    // this is wrong because even if they select an emoji it's going to replace it.
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if (textField.text?.characters.count)! > 1 || textField.text == nil {
            textField.text = String(emojiConverter.convertEmoji())
        }
        resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextFieldDidEndEditingReason) {
        // needs to be if (check value to see if it's an emoji) else -> this
        resignFirstResponder()
    }
    

    
}
