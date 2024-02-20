//
//  SecondViewController.swift
//  TaskVideo8
//
//  Created by Nahar Elsayed on 12/10/2023.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var imageTf: UITextField!
    @IBOutlet weak var nameTF: UITextField!
    let def = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveBTN(_ sender: Any) {
        def.set(nameTF.text!, forKey: "name")
        def.set(imageTf.text!, forKey: "image")
        nameTF.text = ""
        imageTf.text = ""
    }
    

}
