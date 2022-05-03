//
//  ViewController.swift
//  FinalExam
//
//  Created by admin on 5/3/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtHeight: UITextField!
    
    @IBOutlet weak var txtFeet: UITextField!
    
    @IBOutlet weak var txtInch: UITextField!
    
    
    @IBOutlet weak var lblBMI: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func butCal(_ sender: Any) {
        let doubleW = Double(txtHeight.text!)
        let doubleF = Double(txtFeet.text!)
        let doubleI = Double(txtInch.text!)
        lblBMI.text = String(format: "%.2f", calculation(Weight: doubleW!, feet: doubleF!, inch: doubleI!))
    }
    
    
    func calculation(Weight: Double, feet: Double, inch: Double) -> Double{
        let h = inch + feet * 12
        let w = Weight
        var result = (w/(h*h)) * 703
        print(result)
        return result
    }
}

