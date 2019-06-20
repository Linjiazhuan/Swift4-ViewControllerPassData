//
//  SecondViewController.swift
//  PassDataViewController
//
//  Created by Apple on 2019/6/20.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit


protocol CanReceiveDelegate {
    func dataReceived(data:String)
}

class SecondViewController: UIViewController {

    var delegate:CanReceiveDelegate?
    
    var data:String = ""
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        textfield.text = data
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        delegate?.dataReceived(data: textfield.text!)
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
