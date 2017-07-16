//
//  ViewController.swift
//  suggestDoners
//
//  Created by group2 on 7/16/17.
//  Copyright © 2017 group2. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource, UITabBarDelegate,UITableViewDataSource  {
    @available(iOS 2.0, *)
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1

    }

    @IBOutlet var search: UIView!

    @IBOutlet weak var pickBtype: UIPickerView!
    @IBOutlet weak var listDoners: UITableView!
    
    var Btype=["A","A-","B","B-","AB","AB-","O","O-"]
    var placement=9
    var bloodA=["Ahmed 0123456789","Gehad 0123268924"]
    var bloodAm=["Mohamed M 0123456789","Sarah 0123268924"]
    var bloodB=["Shereen 0123456789","Fady 0123268924"]
    var bloodBm=["Sherif 0123456789","Hend 0123268924"]
    var bloodAB=["Magdy 0123456789","Kholoud 0123268924"]
    var bloodABm=["Yasser 0123456789","Nermeen 0123268924"]
    var bloodO=["Mostafa 0123456789","Samah 0123268924"]
    var bloodOm=["Amira 0123456789","Gamal 0123268924"]

    
    
    
    var bloodT="AB"
    var city="Cairo"
    var listdoner="empty"

    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickBtype.dataSource=self
        pickBtype.delegate=self
        listDoners.dataSource=self as UITableViewDataSource
        listDoners.delegate=self as? UITableViewDelegate
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if placement==0{
            return bloodA.count}
            
        else if placement==1{
             return bloodAm.count}

        else if placement==2
        {return bloodB.count}


        else if placement==3
        { return bloodBm.count}

        else if placement==4
        {return bloodAB.count}
        else if placement==5
        {return bloodABm.count}
        else if placement==6
        {return bloodO.count}
        else if placement==7
        {return bloodOm.count}
        else
        {return 1}



    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = bloodA[indexPath.row]
        return cell
    }
    
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    //size of picker
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return Btype.count
    }
    
    
    
    
    @IBAction func searching(_ sender: Any) {
bloodT=Btype[placement]
        
    }
    
    //search button clicked
//    @IBAction func search(sender: AnyObject) {
//        bloodT=Btype[placement]
//        
//       
//        
//
//           }
    //write data to picker
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return Btype[row]
    }
    
    //picker item clicked
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        placement=row
    }
    


}

