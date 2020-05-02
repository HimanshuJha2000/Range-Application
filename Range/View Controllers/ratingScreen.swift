//
//  ratingScreen.swift
//  Range
//
//  Created by Himanshu Jha on 01/05/20.
//  Copyright © 2020 Himanshu Jha. All rights reserved.
//

import UIKit
import Foundation

class ratingScreen: UIViewController {

    public var maxValue:Int = 0
    public var minValue:Int = 0
    
    @IBAction func backButton(_ sender: UIButton) {
        let mainstoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let vc = mainstoryboard.instantiateViewController(withIdentifier: "RangeScreen") as! RangeScreen
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    
    @IBAction func ratingButton(_ sender: UIButton) {
        let mainstoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let vc = mainstoryboard.instantiateViewController(withIdentifier: "rateMeScreen") as! rateMeScreen
        vc.modalPresentationStyle = .pageSheet
        vc.maxValueRate=maxValue
        vc.minValueRate=minValue
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBOutlet weak var editRatingVlaue: UIButton!
    
    override func viewDidLoad() {
        editRatingVlaue.setTitle("Range "+String(minValue)+"-"+String(maxValue), for: .normal)
        editRatingVlaue.layer.cornerRadius = 10;
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }


}
