//
//  VendigMachine.swift
//  Juicy
//
//  Created by 서동운 on 2021/06/08.
//

import Foundation

struct JuiceMaker {
    var fruitStore = FruitStore()
    
    enum Juice {
        case strawberryJuice
        case bananaJuice
        case kiwiJuice
        case mangoJuice
        case mangkiJuice
        case pineappleJuice
        case strawBananaJuice
    }

    func chooseJuice(juice: Juice) {
        switch juice {
        case .strawberryJuice:
            fruitStore.strawberryStock -= 16
        case .bananaJuice:
            fruitStore.bananaStock -= 2
        case .kiwiJuice:
            fruitStore.kiwiStock -= 3
        case .pineappleJuice:
            fruitStore.pineappleStock -= 2
        case .mangoJuice:
            fruitStore.mangoStock -= 3
        case .strawBananaJuice:
            fruitStore.strawberryStock -= 10
            fruitStore.bananaStock -= 1
        case .mangkiJuice:
            fruitStore.mangoStock -= 2
            fruitStore.kiwiStock -= 1
        }
    }
}
