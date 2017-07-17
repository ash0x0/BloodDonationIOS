//
//  ViewController.swift
//  First
//
//  Created by group2 on 7/16/17.
//  Copyright © 2017 group2. All rights reserved.
//


import UIKit

class HospitalFirstViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
	
	let gender:[String]=["A","A-", "B","B-", "AB", "AB-", "O", "O-"]
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}
	
	func numberOfComponents(in pickerView: UIPickerView) -> Int {
		return 1
	}
	
	func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
		return gender.count
	}
	
	func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
		return gender[row]
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
}

