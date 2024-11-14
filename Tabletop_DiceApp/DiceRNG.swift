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
    
    func roll (times:Int) -> [Int]{
        var result = Array<Int>(repeating: 0, count:times+1)
        
        for i in 1...times {
            result[i] = Int.random(in: 0...self.sides) + 1
            
            //slot 0 will always be the sum of the results
            result[0] += result[i]
        }
        return result
    }
}
