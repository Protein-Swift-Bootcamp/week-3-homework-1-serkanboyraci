//
//  ViewController.swift
//  Bootcamp_Week3
//
//  Created by Ali serkan Boyracı  on 19.12.2022.
//

import UIKit

class FirstViewController: UIViewController, MyDataSendingDelegateProtocol { //first you must define protocol
    
    @IBOutlet weak var receivedDataLabel: UILabel! 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func sendDataToFirstViewController(myData: String) { // you must use protocol func's
        receivedDataLabel.text = "Received Data: \(myData)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "getDataSegue" {
            let secondVC: SecondViewController = segue.destination as! SecondViewController
            secondVC.delegate = self
        }
    }

}

