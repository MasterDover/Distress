//
//  addVC.swift
//  Distress
//
//  Created by admin on 12/6/15.
//  Copyright © 2015 awesomefat. All rights reserved.
//

import UIKit
import Parse

class addVC: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    
    @IBOutlet weak var phoneText: UITextField!
    
    @IBOutlet weak var messageText: UITextField!
    
    
    @IBAction func addDistress(sender: AnyObject) {
        
        
        var message = ""
        
        if(self.nameText.text!.characters.count == 0)
        {
            message = "You must enter a name"
        }
        else if(self.phoneText.text!.characters.count == 0)
        {
            message = "You must enter a Phone Number"
        }
        else if(self.messageText.text!.characters.count == 0)
        {
            message = "You must enter a message text"
        }
        
        
        if(message.characters.count != 0)
        {
            //there was a problem
            
        }
        else
        {
            //register the user
            let user = PFObject(className: "Distress")
            user.setValue(nameText.text, forKey: "name")
            user.setValue(phoneText.text, forKey: "phone")
            user.setValue(messageText.text, forKey: "message")
            
            user.saveInBackground()
            
            
        }
    }
    
    
}
