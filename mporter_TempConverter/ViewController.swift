//
//  ViewController.swift
//  mporter_TempConverter
//
//  Created by Michael Ray Porter, Jr on 2/15/24.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var Fahren_In: UITextField!
    @IBOutlet weak var Celsius_In: UITextField!
    var fahren: Float = 32.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Celsius_In.delegate = self
        Fahren_In.delegate = self
        
        Celsius_In.text = "0.0"
        Fahren_In.text = "32.0"
        
    }
    
    //displayAlert(msgTitle: "Ready", msgContent: "Go")
    func displayAlert(msgTitle:String, msgContent:String){
        let alertController = UIAlertController(title: msgTitle, message: msgContent,
                                                preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: "Close", style: .default, handler: nil)
        alertController.addAction(defaultAction)
        
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func F_To_C(_ sender: Any) {
        //c = (f - 32)/1.8
    //Step 1. Make keyboard disappear
        Celsius_In.resignFirstResponder()
        Fahren_In.resignFirstResponder()
    //Step 2. Read in user's input
    //Step 3. Convert string to number
    //Step 4. Do the math
    //Step 5. Convert result back to string
    //Step 6. Display in Celsius
        
        if let tInF = Float(Fahren_In.text!){//input is valid
            let tInC = (tInF - 32.0)/1.8
            Celsius_In.text = String(format: "%.1f", tInC)
        }else{//input is invalid
            displayAlert(msgTitle: "ERROR", msgContent: "Invalid Input")
        }
        
    }
    
    @IBAction func C_To_F(_ sender: Any) {
        //f = (c*1.8) + 32
    //Step 1. Make keyboard disappear
    //Step 2. Read in user's input
    //Step 3. Convert string to number
    //Step 4. Do the math
    //Step 5. Convert result back to string
    //Step 6. Display in Fahrenheit

        if let tInC = Float(Celsius_In.text!){
            let tInF = (tInC*1.8) + 32.0
            Fahren_In.text = String(format: "%.1f", tInF)
        }else{
            displayAlert(msgTitle: "ERROR", msgContent: "Inavlid Input")
        }
    }
    
}

