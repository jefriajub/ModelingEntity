//
//  PrinterMachine(Entity).swift
//  ModelingEntity
//
//  Created by jefri on 15/05/19.
//  Copyright © 2019 jubjub. All rights reserved.
//

import Foundation

class PrinterMachine: Machine {
    var numOfTint: Int = 100 //liter
    var numOfPaper: Int
    var brand: String
    var numOfPages: Int
    
    init(paper: Int, brand: String, pages: Int) {
        numOfPaper = paper
        self.brand = brand
        numOfPages = pages
    }
    
    func addPaper(paper: Int)  {
        numOfPaper += paper
    }
    
    func addTint(tint: Int)  {
        numOfTint += tint
    }
    
    func addPages(pages: Int) {
        numOfPages += pages
    }
    
    func printPage() {
        numOfPaper -= 1
        numOfTint -= 10
        print("\(numOfTint) liter")
    }
}

