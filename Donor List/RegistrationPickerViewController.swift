//
//  RegistrationPickerViewController.swift
//  Donor List
//
//  Created by Ahmed on 16/07/2017.
//  Copyright © 2017 Ahmed. All rights reserved.
//

import UIKit

class RegistrationPickerViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
	
	@available(iOS 2.0, *)
	func numberOfComponents(in pickerView: UIPickerView) -> Int {
		return 1
	}
	
	var userType=["Hospital", "Donor"]
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
	
	
//	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//		var picked: Int = pickUserType .selectedRow(inComponent: 0)
//		if(picked == 0) {
//			segue.destination as! HospitalFirstViewController
//		} else {
//			segue.destination as! DonorViewController
//		}
//		
//	}
	
}

