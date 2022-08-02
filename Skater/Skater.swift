//
//  Skater.swift
//  Skater
//
//  Created by Михаил Рубан on 18.02.2022.
//

import SpriteKit

class Skater: SKSpriteNode {
    var velocity: CGPoint = .zero
    var isOnGround = true
    var minimumY: CGFloat = 0.0
    var jumpingSpeed: CGFloat = 20.0
}
