//
//  SimonSaysViewController.swift
//  UkeMaster
//
//  Created by Allison Walke on 9/17/16.
//  Copyright © 2016 HacktheNorth. All rights reserved.
//

import UIKit
import Firebase

class SimonSaysViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        sendRequest()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func sendRequest() {
        if let url = NSURL(string: "http://httpbin.org/post"){
            let request = NSMutableURLRequest(URL: url)
            request.HTTPMethod = "GET" //Or GET if that's what you need
            request.addValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")  //This is where you add your HTTP headers like Content-Type, Accept and so on
            let params = ["OID1.2" : "SW+Dev+114", "OID1.4" : "192.168.111.114"] as Dictionary<String, String> //this is where you add your parameters
            
            let httpData = NSKeyedArchiver.archivedDataWithRootObject(params) //you need to convert you parameters to NSData or to JSON data if the service accepts this, you might want to search for a solution on how to do this...hopefully this will get you in the right direction :-)
            request.HTTPBody = httpData
            let session = NSURLSession.sharedSession()
            session.dataTaskWithRequest(request, completionHandler: { (returnData, response, error) -> Void in
                let strData = NSString(data: returnData!, encoding: NSUTF8StringEncoding)
                print("\(strData)")
            }).resume() //Remember this one or nothing will happen :-)
        }
    }
}