//
//  LearnViewController.swift
//  UkeMaster
//
//  Created by Allison Walke on 9/16/16.
//  Copyright © 2016 HacktheNorth. All rights reserved.
//

import UIKit

class ChordsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    @IBAction func CChordButton(sender: AnyObject) {
        
        let jsonObject: [String: AnyObject] = [
            "chord" : "C"
        ]
        
        let valid = NSJSONSerialization.isValidJSONObject(jsonObject)
        
        if (valid) {
            print(jsonObject);
        }
    }
    
    @IBAction func EmChord(sender: AnyObject) {
        let jsonObject: [String: AnyObject] = [
            "chord" : "Em"
        ]
        
        let valid = NSJSONSerialization.isValidJSONObject(jsonObject)
        
        if (valid) {
            print(jsonObject);
        }
    }

    @IBAction func AmChordButton(sender: AnyObject) {
        let jsonObject: [String: AnyObject] = [
            "chord" : "Am"
        ]
        
        let valid = NSJSONSerialization.isValidJSONObject(jsonObject)
        
        if (valid) {
            print(jsonObject);
        }
    }
    
    @IBAction func DmChordButton(sender: AnyObject) {
        let jsonObject: [String: AnyObject] = [
            "chord" : "Dm"
        ]
        
        let valid = NSJSONSerialization.isValidJSONObject(jsonObject)
        
        if (valid) {
            print(jsonObject);
        }
    }
    
    @IBAction func FChordButton(sender: AnyObject) {
        let jsonObject: [String: AnyObject] = [
            "chord" : "F"
        ]
        
        let valid = NSJSONSerialization.isValidJSONObject(jsonObject)
        
        if (valid) {
            print(jsonObject);
        }
    }
    
    @IBAction func FGbChordButton(sender: AnyObject) {
        let jsonObject: [String: AnyObject] = [
            "chord" : "F#"
        ]
        
        let valid = NSJSONSerialization.isValidJSONObject(jsonObject)
        
        if (valid) {
            print(jsonObject);
        }
    }
    
    @IBAction func GChordButton(sender: AnyObject) {
        let jsonObject: [String: AnyObject] = [
            "chord" : "G"
        ]
        
        let valid = NSJSONSerialization.isValidJSONObject(jsonObject)
        
        if (valid) {
            print(jsonObject);
        }
    }
    
    @IBAction func DChordButton(sender: AnyObject) {
        let jsonObject: [String: AnyObject] = [
            "chord" : "D"
        ]
        
        let valid = NSJSONSerialization.isValidJSONObject(jsonObject)
        
        if (valid) {
            print(jsonObject);
        }
    }
    
    @IBAction func AChordButton(sender: AnyObject) {
        let jsonObject: [String: AnyObject] = [
            "chord" : "A"
        ]
        
        let valid = NSJSONSerialization.isValidJSONObject(jsonObject)
        
        if (valid) {
            print(jsonObject);
        }
    }
    
    @IBAction func EChordButton(sender: AnyObject) {
        let jsonObject: [String: AnyObject] = [
            "chord" : "E"
        ]
        
        let valid = NSJSONSerialization.isValidJSONObject(jsonObject)
        
        if (valid) {
            print(jsonObject);
        }
    }
}
