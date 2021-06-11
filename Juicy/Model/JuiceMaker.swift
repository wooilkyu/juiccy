//
//  VendigMachine.swift
//  Juicy
//
//  Created by 서동운 on 2021/06/08.
//

import Foundation

enum Juice {
    case strawberryJuice
    case bananaJuice
    case kiwiJuice
    case mangoJuice
    case mangkiJuice
    case pineappleJuice
    case strawBananaJuice
}

enum JuiceMakerError: Error {
    case outOfStock
}

struct JuiceMaker {
    var fruitStore = FruitStore()
    let juice: Juice
    var juiceRecipe: [Fruits: Int] {
        switch juice {
        case .strawberryJuice:
            return [.strawberry: 16]
        case .bananaJuice:
            return [.banana: 2]
        case .kiwiJuice:
            return [.kiwi: 3]
        case .pineappleJuice:
            return [.pineapple: 2]
        case .mangoJuice:
            return [.mango: 3]
        case .strawBananaJuice:
            return [.strawberry: 10, .banana: 1]
        case .mangkiJuice:
            return [.mango: 2, .kiwi: 1]
        }
    }
    
    enum Alert {
        static let decreaseStock = "재료가 모저라요. 재고를 수정할까요?"
        static func madeJuice(juice: Juice) {
            print("\(juice) 나왔습니다! 맛있게 드세요!")
        }
    }
}
