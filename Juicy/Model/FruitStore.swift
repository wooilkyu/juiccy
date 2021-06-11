//
//  FruitStore.swift
//  Juicy
//
//  Created by 서동운 on 2021/06/08.
//

import Foundation

enum Fruits {
    case strawberry, banana, pineapple, kiwi, mango
}

class FruitStore {
    
    let defaultStock: Int = 10
    var strawberryStock = 10, pineappleStock = 10, kiwiStock = 10, bananaStock = 10, mangoStock = 10
    var fruitStock: [Fruits: Int] = [:]
    
    func increaseFruitStock(fruit: Fruits, number: Int) {
        guard let buttonFruitStock = fruitStock[fruit] else { return }
        switch fruit {
        case .strawberry:
            strawberryStock += number
        case .pineapple:
            pineappleStock += number
        case .banana:
            bananaStock += number
        case .kiwi:
            kiwiStock += number
        case .mango:
            mangoStock += number
        }
    }

    func decreaseFruitStock(fruit: Fruits, number: Int) {
        guard let buttonFruitStock = fruitStock[fruit] else { return }
        switch fruit {
        case .strawberry:
            strawberryStock -= number
        case .pineapple:
            pineappleStock -= number
        case .banana:
            bananaStock -= number
        case .kiwi:
            kiwiStock -= number
        case .mango:
            mangoStock -= number
        }
        
    func checkFruitStock(fruit: Fruits) throws -> Int {
        guard let buttonFruitStock = fruitStock[fruit], buttonFruitStock >= 0 else {
            throw JuiceMakerError.outOfStock
        }
        return buttonFruitStock
        }
    }
}

