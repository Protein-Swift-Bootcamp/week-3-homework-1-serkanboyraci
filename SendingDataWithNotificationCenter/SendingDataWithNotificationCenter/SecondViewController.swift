//
//  SecondViewController.swift
//  SendingDataWithNotificationCenter
//
//  Created by Ali serkan Boyracı  on 20.12.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var dataTextField: UITextField!
    
   override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func sendDataClicked(_ sender: Any) {
        NotificationCenter.default.post(name: .init(rawValue: "getDataID"), object: nil,  userInfo:["ReceivedData":dataTextField.text!])
        
        self.dismiss(animated: true, completion: nil) // to close second VC

    }
}
