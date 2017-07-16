//
//  ViewController.swift
//  Blood Donation
//
//  Created by group2 on 7/16/17.
//  Copyright © 2017 group2. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    @available(iOS 2.0, *)
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return userType.count
    }

    var userType=["Hospital", "Individual"]
    var placement=0


    @IBOutlet weak var pickUserType: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        pickUserType.dataSource=self as UIPickerViewDataSource
        pickUserType.delegate=self as UIPickerViewDelegate
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView)->Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component:Int)->Int{
        return userType.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent compoent: Int)-> String?{
        return userType[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component:Int) {
        placement=row
    }

}

