//
//  ViewController.swift
//  Bootcamp_Week3
//
//  Created by Ali serkan Boyracı  on 19.12.2022.
//

import UIKit

class FirstViewController: UIViewController, MyDataSendingDelegateProtocol {
    
    @IBOutlet weak var receivedDataLabel: UILabel! 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func sendDataToFirstViewController(myData: String) {
        self.receivedDataLabel.text = myData
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "getDataSegue" {
            let secondVC: SecondViewController = segue.destination as! SecondViewController
            secondVC.delegate = self
        }
    }

}

