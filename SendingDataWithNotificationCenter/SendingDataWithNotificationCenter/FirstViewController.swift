//
//  ViewController.swift
//  SendingDataWithNotificationCenter
//
//  Created by Ali serkan Boyracı  on 20.12.2022.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var receivedTextLabel: UILabel! // we define label
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(getData(data: )), name: NSNotification.Name(rawValue: "getDataID"), object: nil)
    // to take notification from the NotificationCenter. to take it correctly "rawValue" must be the same with post notification.
    }
    @objc func getData(data:Notification) { // selector function
        if let userInfo = data.userInfo{ // to take data by selector function.
            let receivedData = userInfo["ReceivedData"] as! String 
            receivedTextLabel.text = "Received Text: \(receivedData)" // to show data, we define in label.
        }
    }
    
    @IBAction func getDataClicked(_ sender: Any) { // we define Get Data Button
        performSegue(withIdentifier: "toSendData", sender: nil)  //to go secondVC, we use segue
    }
}

