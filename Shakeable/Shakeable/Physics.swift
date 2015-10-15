//
//  Physics.swift
//  Shakeable
//
//  Created by leonardo fernandes farias on 15/10/15.
//  Copyright © 2015 BEPiD. All rights reserved.
//

import Foundation

import UIKit
import SpriteKit

class Physics {
    func getAnswerBox(ballNumber: Int, withSize: CGFloat) -> SKPhysicsBody {
        let physics = SKPhysicsBody(circleOfRadius: withSize)
        physics.dynamic = true
        
        return physics
    }
    
    func getGlass(ballNumber: Int, withSize: CGFloat) -> SKPhysicsBody {
        let physics = SKPhysicsBody(circleOfRadius: withSize)
        physics.dynamic = false
        return physics
    }
    
    //nova funcao pra getBorda
    //SKTexture é a borda
    //SKPhysicsBody(texture: SKTexture, size: 1)
    
}
