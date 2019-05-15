//
//  ViewController.swift
//  ModelingEntity
//
//  Created by jefri on 15/05/19.
//  Copyright © 2019 jubjub. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var printerMachine: PrinterMachine!
    
    @IBOutlet weak var tintLabel: UILabel!
    @IBOutlet weak var paperLabel: UILabel!
    @IBOutlet weak var pagesLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        printerMachine = PrinterMachine(paper: 100, brand: "Letoy", pages: 0)
        print("jumlah tint \(printerMachine.numOfTint), jumlah paper:\(printerMachine.numOfPaper)")
        print(printerMachine.voltage)
        printerMachine.runMotor()
    }
    
    
    @IBAction func addTint(_ sender: UIButton) {
        printerMachine.addTint(tint: 20)
        updateLabel()
    }
    
    @IBAction func addPaper(_ sender: UIButton) {
        printerMachine.addPaper(paper: 2)
        updateLabel()
       
    }
    
    @IBAction func printPages(_ sender: UIButton) {
        printerMachine.printPage()
        printerMachine.addPages(pages: 1)
        updateLabel()
    }
    
    
    func updateLabel() {
        tintLabel.text = String(printerMachine.numOfTint)
        paperLabel.text = String(printerMachine.numOfPaper)
       pagesLabel.text = String(printerMachine.numOfPages)
       
    }
}

