//
//  EmojiValidator.swift
//  tic-tac-toe
//
//  Created by Christopher Moore on 7/1/17.
//  Copyright © 2017 Christopher Moore. All rights reserved.
//

import Foundation

class EmojiValidator {
    
    var convertsTextToEmoji: Bool
    
    init(convertsTextToEmoji: Bool = true) {
        self.convertsTextToEmoji = convertsTextToEmoji
    }

    /* broken, returns something out of the range of emoji decimal
    func convertStringEmoji(forString: String) -> Character {
        var sum: UInt32 = 0
        for char in forString.unicodeScalars {
            sum += char.value
        }
        let random = arc4random_uniform(UInt32(sum)) + 128513
        let newScalar = UnicodeScalar(random)
        let character = Character(newScalar!)
        print(character)
        return character
    }
    */

    
    func convertEmoji() -> Character {
        let min = 128513
        let max = 128590
        let difference = max - min
        let random = arc4random_uniform(UInt32(difference)) + 128513
        let newScalar = UnicodeScalar(random)
        let character: Character = Character(newScalar!)
        print(character)
        return character
    }
}
