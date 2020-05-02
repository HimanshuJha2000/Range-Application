//
//  rateMeScreen.swift
//  Range
//
//  Created by Himanshu Jha on 01/05/20.
//  Copyright © 2020 Himanshu Jha. All rights reserved.
//
import UIKit
import Foundation

class rateMeScreen: UIViewController {

    public var maxValueRate:Int = 0
    public var minValueRate:Int = 0
    @IBAction func ratingSlider(_ sender: UISlider) {

    }
    
    @IBOutlet weak var sliderValue: UISlider!
    
    @IBOutlet weak var ratingLabel: UILabel!
    
    @IBAction func submitButton(_ sender: UIButton) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        sliderValue.maximumValue=Float(maxValueRate)
        sliderValue.minimumValue=Float(minValueRate)
        ratingLabel.text="\(minValueRate)"
        sliderValue.addTarget(self, action: #selector(rangesliderDidChange(slider:)), for: .valueChanged)
        // Do any additional setup after loading the view.
    }
    
   @objc func rangesliderDidChange(slider:UISlider){
        let currentRange = Int(slider.value)
        ratingLabel.text = "\(currentRange)"
    }

}
