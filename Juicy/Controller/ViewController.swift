//
//  ViewController.swift
//  Juicy
//
//  Created by 서동운 on 2021/06/07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var StrawberryStock: UILabel!
    @IBOutlet var BananaStock: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        StrawberryStock.text = FruitStore().strawberryStock.description
        BananaStock.text = FruitStore().bananaStock.description
        
        
        
    }

}

