//
//  SecondViewController.swift
//  SendingDataWithClosures
//
//  Created by Ali serkan Boyracı  on 23.12.2022.
//

import UIKit

typealias text = (String) -> () //using typealias to define closure type

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var enteredTextField: UITextField! //defined textField
    
    var textClousure : text! // defined typealias used for created clousure type variable

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
   
    @IBAction func sendDataClicked(_ sender: Any) { //defined button
        guard let text = enteredTextField.text else {return} // taking text data with guard let
        textClousure(text)
   
        navigationController?.popViewController(animated: true) // to go back FirstVC with NavigationController
        
        
    }
    
}
