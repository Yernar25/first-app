//
//  ViewController.swift
//  firstapp
//
//  Created by Yernar Dyussenbekov on 18.09.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var textField1: UITextField!
    
    @IBOutlet weak var textField2: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touched(_ sender: Any) {
        let a = textField1.text!
        let b = textField2.text!
        
        if let numberA = Int(a), let numberB = Int(b) {
            label.text = String(numberA + numberB)
        } else {
            label.text = "Введите 2 числа"
        }
    }
    
    
    @IBAction func minusButton(_ sender: Any) {
        let a = textField1.text!
        let b = textField2.text!
        
        guard let numberA = Int(a), let numberB = Int(b) else {
            label.text = "Введите 2 числа"
            return
        }
        
        label.text = String(numberA - numberB)
    }
    
    
    @IBAction func multiplication(_ sender: Any) {
        let a = textField1.text!
        let b = textField2.text!
        
        guard let numberA = Int(a), let numberB = Int(b) else {
            label.text = "Введите 2 числа"
            return
        }
        
        label.text = String(numberA * numberB)
    }
    
    @IBAction func div(_ sender: Any) {
        let a = textField1.text!
        let b = textField2.text!
        
        guard let numberA = Int(a), let numberB = Int(b) else {
            label.text = "Введите 2 числа"
            return
        }
        label.text = String(Double(numberA) / Double(numberB))
    }
    
}

