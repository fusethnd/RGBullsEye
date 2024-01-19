//
//  Game.swift
//  RGBullsEye
//
//  Created by Thanadon Boontawee on 19/1/2567 BE.
//

import Foundation

struct Game {
    var target = RGB.random()
    var score = 0
    
    mutating func check(guess: RGB) {
        let difference = lround(guess.difference(target: target) * 100)
        score = 100 - difference
    }

    mutating func startNewGame() {
        score = 0
        target = RGB.random()
    }
}
