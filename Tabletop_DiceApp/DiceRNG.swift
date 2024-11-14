//
//  DiceRNG.swift
//  Tabletop_DiceApp
//
//  Created by James McGinnis on 11/14/24.
//

class dice {
    var name: String
    var sides: Int
    
    required init(sides:Int, name:String){
        self.sides = sides
        self.name = name
    }
    
    func roll () -> Int{
        var result = Int.random(in: 0...self.sides) + 1
        return result
    }
}
