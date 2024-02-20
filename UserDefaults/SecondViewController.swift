//
//  SecondViewController.swift
//  UserDefaults
//
//  Created by Nahar Elsayed on 12/10/2023.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameLB: UILabel!
    let def = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func showBTN(_ sender: Any) {
        nameLB.text = def.value(forKey: "name") as! String
    }
    
}
