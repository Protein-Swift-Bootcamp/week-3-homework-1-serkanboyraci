//
//  ViewController.swift
//  SendingDataWithClosures
//
//  Created by Ali serkan Boyracı  on 23.12.2022.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var receivedTextLabel: UILabel! //defined label
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    @IBAction func getDataClicked(_ sender: Any) { //defined button
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        vc.textClousure = {[weak self] text in //reaching data with closure. // using with weak self to prevent memory leak
            self?.receivedTextLabel.text = "Received Text: \(text)" // self must be optional because of weak self
        }
        
        navigationController?.pushViewController(vc, animated: true) // to go secondVC with NavigationController
    }
}

