//
//  ViewController.swift
//  PassDataViewController
//
//  Created by Apple on 2019/6/20.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CanReceiveDelegate {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeBackground(sender:UIButton){
        view.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
    }
    
    
    @IBAction func buttonPressed(_ sender: Any) {
        performSegue(withIdentifier: "sendDataForwards", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendDataForwards"{
            let destinationVC = segue.destination as! SecondViewController
            if let textFieldtext = textfield.text{
                destinationVC.data = textFieldtext
                destinationVC.delegate = self
            }
            
        }
    }
    
    func dataReceived(data: String) {
        label.text = data
    }

}

