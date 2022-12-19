//
//  SecondViewController.swift
//  Bootcamp_Week3
//
//  Created by Ali serkan Boyracı  on 19.12.2022.
//

import UIKit

protocol MyDataSendingDelegateProtocol { //creating protocol
    func sendDataToFirstViewController(myData: String) // keeping data which will be send to firstVC
}

class SecondViewController: UIViewController {


    @IBOutlet weak var dataTextField: UITextField!
    
    var delegate: MyDataSendingDelegateProtocol? // defining protocol as a variable.
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func sendDataButtonClicked(_ sender: Any) { // defining buttonclicked function
        if delegate != nil && dataTextField.text != nil {
            let dataToBeSent = dataTextField.text
            delegate?.sendDataToFirstViewController(myData: dataToBeSent!)
            dismiss(animated: true, completion: nil) // to close VC
        }
    }
}
