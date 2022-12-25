//
//  SecondViewController.swift
//  SendingDataWithNotificationCenter
//
//  Created by Ali serkan Boyracı  on 20.12.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var dataTextField: UITextField! // defined TextField
    
   override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func sendDataClicked(_ sender: Any) { //defined sendData Button.
        NotificationCenter.default.post(name: .init(rawValue: "getDataID"), object: nil,  userInfo:["ReceivedData":dataTextField.text!])
        // to send data, we post Notification with NotificationCenter and we put data in userInfo dictionary and give id as a "getDataID"
        // rawValue must be same for taking data from NotificationCenter.addObserver 
        
        self.dismiss(animated: true, completion: nil) // to close second VC

    }
}
