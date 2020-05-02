////
////  timeHistoryScreen.swift
////  Range
////
////  Created by Himanshu Jha on 02/05/20.
////  Copyright © 2020 Himanshu Jha. All rights reserved.
////
//
//import Foundation
//import UIKit
//
//class timeHistoryScreen : UIViewController, UITableViewDelegate, UITableViewDataSource{
//
//    @IBAction func backBtn(_ sender: UIButton) {
//    }
//
//    var list:[AnyObject] = [AnyObject] ()
//
//    @IBOutlet weak var timeTableView: UITableView!
//
//    func RefreshData(){
//        list = readItems("Data")
//        timeTableView.reloadData()
//    }
//
//    override func viewDidLoad() {
//
//        super.viewDidLoad()
//
//        timeTableView.dataSource=self
//        timeTableView.delegate=self
//            // Do any additional setup after loading the view.
//
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
//    {
//            return  list.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
//    {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        if let value1 = list[indexpath.row].value(forKey: "date") as? String
//        {
//            cell.textLabel?.text = title
//        }
//
//    }
//
//
//
//}
