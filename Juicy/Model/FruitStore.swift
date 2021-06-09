//
//  FruitStore.swift
//  Juicy
//
//  Created by 서동운 on 2021/06/08.
//

import Foundation


class FruitStore {
    enum Fruit: String {
        case strawberry = "strawberry"
        case pineapple = "pineapple"
        case kiwi = "kiwi"
        case banana = "banana"
        case mango = "mango"
    }
    
    var strawberryStock = 10, pineappleStock = 10, kiwiStock = 10, bananaStock = 10, mangoStock = 10
    
    func increaseFruitStock(fruit: Fruit, number: Int) {
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
    
    func decreaseFruitStock(fruit: Fruit, number: Int) {
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
    }
}
