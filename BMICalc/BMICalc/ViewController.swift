//
//  ViewController.swift
//  BMICalc
//
//  Created by Aditya Sanjeev Purohit on 2024-09-20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var appName: UILabel!
    
    @IBOutlet weak var unitLabel: UILabel!
    @IBOutlet weak var unitSwitch: UISwitch!
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var heightInput: UITextField!
    
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var weightInput: UITextField!
    
    @IBOutlet weak var calculateButton: UIButton!
    
    @IBOutlet weak var BMILabel: UILabel!
    @IBOutlet weak var BMIcategoryLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateBMI(_ sender: UIButton) {
        if let height = heightInput.text , let weight = weightInput.text{
            if !height.isEmpty, !weight.isEmpty{
                var result = 0.0;
                var heightinMeters = Double(height)!/100;
                print(weight);
                print(height);
                result = (Double(weight)!) / (heightinMeters * heightinMeters)
                
                BMILabel.text = "BMI is \(result)";
            }
        }
    }
    
}

