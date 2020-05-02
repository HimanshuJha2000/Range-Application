//
//  ViewController.swift
//  Range
//
//  Created by Himanshu Jha on 01/05/20.
//  Copyright © 2020 Himanshu Jha. All rights reserved.
//

import UIKit

class RangeScreen: UIViewController {

    @IBOutlet weak var maxValue: UITextField!
    
    @IBOutlet weak var minValue: UITextField!
    
    @IBAction func submitButton(_ sender: UIButton) {
        let max = Int(maxValue.text ?? "0") ?? -1
        let min = Int(minValue.text ?? "0") ?? -1
        if(min >= 0 && max < 10 && max > min){
            let mainstoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
            let vc = mainstoryboard.instantiateViewController(withIdentifier: "ratingScreen") as! ratingScreen
            vc.modalPresentationStyle = .fullScreen
            vc.maxValue = Int(maxValue.text ?? "0") ?? -1
            vc.minValue = Int(minValue.text ?? "0") ?? -1
            self.present(vc, animated: true, completion: nil)
        }
        else{
            let alert = UIAlertController(title: "Warning", message: "Incorrect Range Values!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    }
    
    @objc func dismissKeyboard() {
           self.view.endEditing(true)
       }
    
    override func viewDidLoad() {
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        self.view.addGestureRecognizer(tap)
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
}

