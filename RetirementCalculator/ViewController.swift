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
    @IBOutlet weak var txtFld5: UITextField!
    @IBOutlet weak var lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if Crashes.hasCrashedInLastSession{
            
            let alertC = UIAlertController(title: "OOPs", message: "Sorry for that last crash. We are working on it.", preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "OK", style: .default)
            alertC.addAction(okAction)
            
            present(alertC, animated: animated)
        }
        
        Analytics.trackEvent("navigated_to_calculator")
    }

    @IBAction func tappedOnBtn(_ sender: Any) {
        
        // Calculated text
        let currentAgeInt = Int(txtFld1.text ?? "") ?? 0
        let retirementAgeInt = Int(txtFld2.text ?? "") ?? 0
        let monthlyInvestment = Int(txtFld3.text ?? "") ?? 0
        let currentSavings = Int(txtFld4.text ?? "") ?? 0
        let interestRate = Int(txtFld5.text ?? "") ?? 0
        
        let duration = retirementAgeInt - currentAgeInt
        let dummyRetirementAmount = (duration * ((monthlyInvestment * 12) * interestRate)) + (duration * (currentSavings * interestRate))
        
        lbl.text = "If you save Rs \(monthlyInvestment) every month for \(retirementAgeInt - currentAgeInt) years and invest that money and your current savings of Rs \(currentSavings) at an annual interest rate of \(interestRate)%, you will have Rs \(dummyRetirementAmount) amount at your retirement age"

        // Analytics
        let currentAge = txtFld1.text ?? ""
        let retirementAge = txtFld2.text ?? ""
        let params = ["currentAge": currentAge, "retirementAge": retirementAge]
        
        Analytics.trackEvent("calculate_retirement_amount", withProperties: params)
    }
    
}

