//
//  ViewController.swift
//  SendingDataWithNotificationCenter
//
//  Created by Ali serkan Boyracı  on 20.12.2022.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var receivedTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(getData(data: )), name: NSNotification.Name(rawValue: "getDataID"), object: nil)
    
    }
    @objc func getData(data:Notification) {
        if let userInfo = data.userInfo{
            let receivedData = userInfo["ReceivedData"] as! String
            receivedTextLabel.text = "Received Text: \(receivedData)"
        }
    }
    
    @IBAction func getDataClicked(_ sender: Any) {
        performSegue(withIdentifier: "toSendData", sender: nil)
    }
}

