//
//  GameScene.swift
//  Skater
//
//  Created by Михаил Рубан on 18.02.2022.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    //фон
    let background = SKSpriteNode(imageNamed: "background")
    
    //скейтбордистка
    var skater = Skater(imageNamed: "skater")
    
    // Массив, содержащий все текущие секции тротуара
    var bricks: [SKSpriteNode] = []
    
    // Размер секций на тротуаре
    var brickSize = CGSize.zero
    
    // Настройка скорости движения направо для игры
    // Это значение может увеличиваться по мере продвижения пользователя в игре
    var scrollSpeed: CGFloat = 5.0
    
    override func didMove(to view: SKView) {
        anchorPoint = CGPoint.zero
        let midX = frame.midX
        let midY = frame.midY
        background.position = CGPoint(x: midX, y: midY)
        addChild(background)
        
        createSkater()
        addChild(skater)
    }
    
    func createSkater() {
        let xPointSkater = frame.midX / 4
        let yPointSkater = skater.frame.height
        skater.position = CGPoint(x: xPointSkater, y: yPointSkater)
        skater.zPosition = 10
        
    }
    
    func createBrick(atPosition position: CGPoint) -> SKSpriteNode {
        // Создаем спрайт секции и добавляем его к сцене
        let brick = SKSpriteNode(imageNamed: "sidewalk")
        brick.position = position
        brick.zPosition = 8
        addChild(brick)
        
        // Обновляем свойство brickSize реальным значением размера секции
        brickSize = brick.size
        
        // Добавляем новую секцию к массиву
        bricks.append(brick)
        
        // Возвращаем новую секцию вызывающему коду
        return brick
    }
    
    func updateBricks(withScrollAmount currentScrollAmount: CGFloat) {
        // Отслеживаем самое большое значение по оси x для всех существующих секций
        var farthestRightBrickX: CGFloat = 0.0
    }
}
