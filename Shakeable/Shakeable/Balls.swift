//
//  Balls.swift
//  Shakeable
//
//  Created by leonardo fernandes farias on 15/10/15.
//  Copyright © 2015 BEPiD. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit

class Balls: SKSpriteNode
{
    var balls: SKSpriteNode?
    
    func getBallName(ballNumber: Int) -> String { // funcão para retornar o nome das bolas
        switch(ballNumber) {
        case 0:
            return "8ball"
        case 1:
            return "tennis"
        case 2:
            return "basket"
        default:
            return "nada"
        }
    }
    
    func ballIsUnlocked(ballNumber: Int) -> Bool{
        //Aqui deveriamos pegar do CoreData
        switch(ballNumber) {
        case 0:
            return true
        case 1:
            return true
        case 2:
            return true
        default:
            return false
        }
    }
    
    func background(ballNumber: Int) -> UIColor // retornar o fundo de cada bola
    {
        switch(ballNumber)
        {
        case 0:
            
            return UIColor.blueColor().eightBall
            
        default:
            return UIColor.greenColor()
        }
    }
    
    // função para retornar as respostas de cada classe
    func getResposta(value: Int, ballNumber: Int) -> String {
        switch ballNumber{
        case 0:
            let Resposta = Respostas8Ball()
            return Resposta.getRespostas(value)
        case 1:
            let Resposta = RespostasTennis()
            return Resposta.getRespostas(value)
        case 2:
            let answer = BasketballAnswers()
            return answer.getAnswers(value)
        default:
            return "Deu merda"
        }
    }
    
    // função para retornar o número máximo de respostas de cada classe
    func getMaxRespostas(ballNumber: Int) -> Int {
        switch ballNumber{
        case 0:
            let Resposta = Respostas8Ball()
            return Resposta.getNumeroMaximodeRespostas()
        case 1:
            let Resposta = RespostasTennis()
            return Resposta.getNumeroMaximodeRespostas()
        case 2:
            let answer = BasketballAnswers()
            return answer.getMaximumAnswerNumbers()
        default:
            return 1
        }
    }
    
    func getTotalBalls() -> [String] {
        var names = [String]() // nome das bolas
        var i: Int
        
        // loop para pegar o nome de cada bola da magia
        for i = 1; self.getBallName(i) != "nada"; i++
        {
            names.append(self.getBallName(i))
            print(names[i - 1])
        }
        
        return names
    }
}
