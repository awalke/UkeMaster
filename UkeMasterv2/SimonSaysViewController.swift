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

    var count = 0;
    var array = Array<String>()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        sendRequest(id: count)
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
    
    func sendRequest(id: Int) {
        let ref = Firebase(url:"http://ukemaster-fe566.firebaseio.com/CantHelpFalling/" + String(id))
        
        // Attach a closure to read the data at our posts reference
        ref?.observe(.value, with: { snapshot in
            let keyValue = snapshot!.value
            var content = keyValue.debugDescription
            
            //print(content.characters.count)
            if (content.characters.count == 44) {
                var range = content.index(content.endIndex, offsetBy: -20)..<content.endIndex
                content.removeSubrange(range)
                
                range = content.index(content.endIndex, offsetBy: -24)..<content.index(content.endIndex, offsetBy: -1)
                content.removeSubrange(range)
                self.sendChords(chord: content)
            }
            else {
                var range = content.index(content.endIndex, offsetBy: -20)..<content.endIndex
                content.removeSubrange(range)
                
                range = content.index(content.endIndex, offsetBy: -25)..<content.index(content.endIndex, offsetBy: -2)
                content.removeSubrange(range)
                self.sendChords(chord: content)
            }
            
            
            
            //print(content)
        })
    }
    
    func sendChords(chord: String){
        
        let ref = Firebase(url: "http://ukemaster-fe566.firebaseio.com/")

        
        let chordRef = ref?.child(byAppendingPath: "Chords")
        
        let chords = ["Notes": chord]
        chordRef?.setValue(chords)
        
        changeLabel(chord: chord)
        
    }
    @IBOutlet weak var LabelOutlet: UILabel!
    
    func changeLabel(chord: String) {
        array.append(chord)
        /*UIView.animate(withDuration: 1) {
         self.LabelOutlet.alpha = 0
         }*/
        
        LabelOutlet.text = LabelOutlet.text! + " " + chord
        UIView.animate(withDuration: 1) {
            self.LabelOutlet.alpha = 1
        }
        
        /*sleep(1)
        
        for i in 0 ..< array.count  {
            LabelOutlet.text = array[i]
            sleep(1)
        }*/
    }
    
    
    @IBAction func NextButton(_ sender: AnyObject ){
        
        count += 1;
        
        if(count < 24) {
            UIView.animate(withDuration: 1) {
                self.LabelOutlet.alpha = 0
            }
            sendRequest(id: count)
        }
        else {
            LabelOutlet.text = "Good Job!"
        }
    }
}
