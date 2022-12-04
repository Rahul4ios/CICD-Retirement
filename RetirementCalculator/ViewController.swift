//
//  ViewController.swift
//  RetirementCalculator
//
//  Created by Rahul Yadav on 02/12/22.
//

import UIKit
import AppCenterCrashes
import AppCenterAnalytics

class ViewController: UIViewController {

    @IBOutlet weak var txtFld1: UITextField!
    @IBOutlet weak var txtFld2: UITextField!
    @IBOutlet weak var txtFld3: UITextField!
    @IBOutlet weak var txtFld4: UITextField!
    @IBOutlet weak var lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if Crashes.hasCrashedInLastSession{
            
            let alertC = UIAlertController(title: "OOPs", message: "Sorry for that last crash. We are working on it.", preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "Ok", style: .default)
            alertC.addAction(okAction)
            
            present(alertC, animated: animated)
        }
        
        Analytics.trackEvent("navigated_to_calculator")
    }

    @IBAction func tappedOnBtn(_ sender: Any) {
        
        let currentAge = txtFld1.text ?? ""
        let retirementAge = txtFld2.text ?? ""
        let params = ["currentAge": currentAge, "retirementAge": retirementAge]
        
        Analytics.trackEvent("calculate_retirement_amount", withProperties: params)
    }
    
}

