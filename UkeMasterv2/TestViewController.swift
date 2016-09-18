//
//  TestViewController.swift
//  UkeMasterv2
//
//  Created by Allison Walke on 9/17/16.
//  Copyright © 2016 HacktheNorth. All rights reserved.
//

import UIKit
import Firebase

class TestViewController: UIViewController {

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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func CChordButton(_ sender: AnyObject) {
        let ref = Firebase(url: "http://ukemaster-fe566.firebaseio.com/")
        
        
        let chordRef = ref?.child(byAppendingPath: "Chords")
        
        let chords = ["Notes": "C"]
        chordRef?.setValue(chords)
    }
    
    @IBAction func EmChordButton(_ sender: AnyObject) {
        let ref = Firebase(url: "http://ukemaster-fe566.firebaseio.com/")
        
        
        let chordRef = ref?.child(byAppendingPath: "Chords")
        
        let chords = ["Notes": "Em"]
        chordRef?.setValue(chords)
    }
    
    @IBAction func AmChordButton(_ sender: AnyObject) {
        let ref = Firebase(url: "http://ukemaster-fe566.firebaseio.com/")
        
        
        let chordRef = ref?.child(byAppendingPath: "Chords")
        
        let chords = ["Notes": "Am"]
        chordRef?.setValue(chords)
    }
    
    @IBAction func DmChordButton(_ sender: AnyObject) {
        let ref = Firebase(url: "http://ukemaster-fe566.firebaseio.com/")
        
        
        let chordRef = ref?.child(byAppendingPath: "Chords")
        
        let chords = ["Notes": "Dm"]
        chordRef?.setValue(chords)
    }
    
    @IBAction func FChordButton(_ sender: AnyObject) {
        let ref = Firebase(url: "http://ukemaster-fe566.firebaseio.com/")
        
        
        let chordRef = ref?.child(byAppendingPath: "Chords")
        
        let chords = ["Notes": "F"]
        chordRef?.setValue(chords)
    }
    
    @IBAction func BmChordButton(_ sender: AnyObject) {
        let ref = Firebase(url: "http://ukemaster-fe566.firebaseio.com/")
        
        
        let chordRef = ref?.child(byAppendingPath: "Chords")
        
        let chords = ["Notes": "Bm"]
        chordRef?.setValue(chords)
    }
    
    @IBAction func GChordButton(_ sender: AnyObject) {
        let ref = Firebase(url: "http://ukemaster-fe566.firebaseio.com/")
        
        
        let chordRef = ref?.child(byAppendingPath: "Chords")
        
        let chords = ["Notes": "G"]
        chordRef?.setValue(chords)
    }
    
    @IBAction func DChordButton(_ sender: AnyObject) {
        let ref = Firebase(url: "http://ukemaster-fe566.firebaseio.com/")
        
        
        let chordRef = ref?.child(byAppendingPath: "Chords")
        
        let chords = ["Notes": "D"]
        chordRef?.setValue(chords)
    }
    
    @IBAction func AChordButton(_ sender: AnyObject) {
        let ref = Firebase(url: "http://ukemaster-fe566.firebaseio.com/")
        
        
        let chordRef = ref?.child(byAppendingPath: "Chords")
        
        let chords = ["Notes": "A"]
        chordRef?.setValue(chords)
    }
    
    @IBAction func EChordButton(_ sender: AnyObject) {
        let ref = Firebase(url: "http://ukemaster-fe566.firebaseio.com/")
        
        
        let chordRef = ref?.child(byAppendingPath: "Chords")
        
        let chords = ["Notes": "E"]
        chordRef?.setValue(chords)
    }
}
