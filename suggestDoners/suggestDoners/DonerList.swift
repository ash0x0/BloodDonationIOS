//
//  DonerList.swift
//  suggestDoners
//
//  Created by Gehad on 7/16/17.
//  Copyright © 2017 group2. All rights reserved.
//

import UIKit

class DonerList: UIViewController,UITabBarDelegate,UITableViewDataSource {
    var intPassed = Int()
    //var value:Int!
    @IBOutlet weak var ListDoners: UITableView!
    
    var bloodA=["Ahmed 0123456789","Gehad 0123268924"]
    var bloodAm=["Mohamed M 0123456789","Sarah 0123268924"]
    var bloodB=["Shereen 0123456789","Fady 0123268924"]
    var bloodBm=["Sherif 0123456789","Hend 0123268924"]
    var bloodAB=["Magdy 0123456789","Kholoud 0123268924"]
    var bloodABm=["Yasser 0123456789","Nermeen 0123268924"]
    var bloodO=["Mostafa 0123456789","Samah 0123268924"]
    var bloodOm=["Amira 0123456789","Gamal 0123268924"]
    
    var emptyB=[" "," "]


    

    override func viewDidLoad() {
        super.viewDidLoad()
        ListDoners.dataSource=self
        ListDoners.delegate=self as? UITableViewDelegate


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if intPassed==0{
            return bloodA.count}
            
        else if intPassed==1{
            return bloodAm.count}
            
        else if intPassed==2
        {return bloodB.count}
            
            
        else if intPassed==3
        { return bloodBm.count}
            
        else if intPassed==4
        {return bloodAB.count}
        else if intPassed==5
        {return bloodABm.count}
        else if intPassed==6
        {return bloodO.count}
        else if intPassed==7
        {return bloodOm.count}
        else
        {return emptyB.count}
        
        
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        if intPassed==0{
            cell.textLabel?.text = bloodA[indexPath.row]
        }
            
        else if intPassed==1{
            cell.textLabel?.text = bloodAm[indexPath.row]
        }
            
        else if intPassed==2
        {
            cell.textLabel?.text = bloodB[indexPath.row]
        }
            
            
        else if intPassed==3
        {
            cell.textLabel?.text = bloodBm[indexPath.row]
        }
            
        else if intPassed==4
        {
            cell.textLabel?.text = bloodAB[indexPath.row]
        }
        else if intPassed==5
        {
            cell.textLabel?.text = bloodABm[indexPath.row]
        }
        else if intPassed==6
        {
            cell.textLabel?.text = bloodO[indexPath.row]
        }
        else if intPassed==7
        {
            cell.textLabel?.text = bloodOm[indexPath.row]
        }
        else
        {
            cell.textLabel?.text = emptyB[indexPath.row]
        }

        
        //cell.textLabel?.text = bloodA[indexPath.row]
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
