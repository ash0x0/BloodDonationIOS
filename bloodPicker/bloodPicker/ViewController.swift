//
//  ViewController.swift
//  bloodPicker
//
//  Created by Gehad on 7/15/17.
//  Copyright © 2017 Gehad. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {

    
    @IBOutlet weak var pickb: UIPickerView!
    var Btype=["A","A-","B","B-","AB","AB-"]
    var placement=0
    
     var bloodT="AB"
    var city="Cairo"
    var listdoner="empty"
    
    @IBOutlet weak var label1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        pickb.dataSource=self
        pickb.delegate=self
        // Do any additional setup after loading the view, typically from a nib.
        
        //http://188.226.144.157/group7/BD/register_user_BD.php?phone=012333&+name=Lara&+email=lara@f.com&+city=Cairo&+BDate=1995-06-06&+btype=O&+gender=1
        
//        let request = NSMutableURLRequest(URL: NSURL(string: "http://188.226.144.157/group7/BD/getmatch.php")!)
//        request.HTTPMethod = "POST"
//        let postString = "bloodT="+bloodT+"&city="+city
//        request.HTTPBody = postString.dataUsingEncoding(NSUTF8StringEncoding)
//        let task = NSURLSession.sharedSession().dataTaskWithRequest(request) { data, response, error in
//            guard error == nil && data != nil else {                                                          // check for fundamental networking error
//                print("error=\(error)")
//                return
//            }
//            
//            if let httpStatus = response as? NSHTTPURLResponse where httpStatus.statusCode != 200 {           // check for http errors
//                print("statusCode should be 200, but is \(httpStatus.statusCode)")
//                print("response = \(response)")
//            }
//            
//            let responseString = String(data: data!, encoding: NSUTF8StringEncoding)
//            print("responseString = \(responseString)")
//        }
//        task.resume()
//        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//blaa
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    //size of picker
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return Btype.count
    }
    
    
    func convertStringToDictionary(text: String) -> [String:AnyObject]? {
        if let data = text.dataUsingEncoding(NSUTF8StringEncoding) {
            do {
                return try NSJSONSerialization.JSONObjectWithData(data, options: []) as? [String:AnyObject]
            } catch let error as NSError {
                print(error)
            }
        }
        return nil
    }

    
    //search button clicked
    @IBAction func search(sender: AnyObject) {
        bloodT=Btype[placement]
        
        let request = NSMutableURLRequest(URL: NSURL(string: "http://188.226.144.157/group7/BD/swift/getmatch0.php")!)
        request.HTTPMethod = "POST"
        let postString = "bloodType="+bloodT+"&city="+city
        request.HTTPBody = postString.dataUsingEncoding(NSUTF8StringEncoding)
        let task = NSURLSession.sharedSession().dataTaskWithRequest(request) { data, response, error in
            guard error == nil && data != nil else {                                                          // check for fundamental networking error
                print("error=\(error)")
                return
            }
//            
//            do {
//                
//                if let json = try NSJSONSerialization.JSONObjectWithData(data!, options: []) as? [String: String], let name = json["listcode"] {
//                    print("name = \(name)")   // if everything is good, you'll see "William"
//                }
//            } catch let parseError {
//                print("parsing error: \(parseError)")
//                let responseString = String(data: data!, encoding: NSUTF8StringEncoding)
//                print("raw response: \(responseString)")
//            }

            
            if let httpStatus = response as? NSHTTPURLResponse where httpStatus.statusCode != 200 {           // check for http errors
                print("statusCode should be 200, but is \(httpStatus.statusCode)")
                print("response = \(response)")
            }
            
            
            let responseString = String(data: data!, encoding: NSUTF8StringEncoding)
            print("listdoner = \(responseString)")
            self.listdoner=responseString!
            self.listdoner = self.listdoner.stringByReplacingOccurrencesOfString("<html>", withString: "", options: NSStringCompareOptions.LiteralSearch, range: nil)
            self.listdoner.stringByReplacingOccurrencesOfString("\\n", withString: "", options: NSStringCompareOptions.LiteralSearch, range: nil)
            self.listdoner.stringByReplacingOccurrencesOfString("</html>", withString: "", options: NSStringCompareOptions.LiteralSearch, range: nil)
            
            
            
            
            //self.listdoner = self.listdoner.stringByReplacingOccurrencesOfString("\\", withString: "", options: NSStringCompareOptions.LiteralSearch, range: nil)
            //print("listdoner = \(self.listdoner)")
        }
        task.resume()
        
        
        //let result = convertStringToDictionary(listdoner)

        
//        
//        if let json = try? NSJSONSerialization.dataWithJSONObject(listdoner, options: []) {
//            
//           // var myBoard: NSArray = json["boards"] as! NSArray
//            if let dictionary = listdoner as? [String: Any] {
//                if let number = dictionary["listcode"] as? String {
//                    // access individual value in dictionary
//                              // print("bla \(number[0])" )
//
//                }

            
//            let liquidLocations = json["listcode"]
//            
//            //looping through all the json objects in the array teams
//            for i in 0 ..< liquidLocations.count{
//                let teamId: Int = (liquidLocations[i]["locationid"] as! NSString).integerValue
//                print(teamId)
//            }

            
            // here `json` is your JSON data
        //}
        //}
        
    }
    //write data to picker
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return Btype[row]
    }
    
    //picker item clicked
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        placement=row
    }

}

