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
    
       if setEmojiTextField.text?.characters.count == 0 {
            UIView.animate(withDuration: 0.5) {
                self.setEmojiTextField.shake()
                
            }
       } else {
        // create segue since we've picked an emoji
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "GridViewController") as! GridViewController
        controller.emojiToUseForPlayer = setEmojiTextField.text!
        present(controller, animated: true)
        }
    
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
        textField.resignFirstResponder()
        return true
    }
    
}

