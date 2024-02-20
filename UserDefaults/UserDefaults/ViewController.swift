//
//  ViewController.swift
//  UserDefaults
//
//  Created by Nahar Elsayed on 12/10/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ageTF: UITextField!
    @IBOutlet weak var nameTF: UITextField!
    
   
    let def = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func swip(_ sender: Any) {
        print("right")
        let Sv = storyboard?.instantiateViewController(withIdentifier: "SecondViewController")as! SecondViewController
        navigationController?.pushViewController(Sv, animated: true)
    }
    
    @IBAction func saveToDataDefaults(_ sender: Any) {
        def.set(nameTF.text, forKey: "name")
        def.set(ageTF.text, forKey: "age")
        nameTF.text = ""
        ageTF.text = ""
    }
    
    
    @IBAction func showfromDataDefaults(_ sender: Any) {
        nameTF.text = def.value(forKey: "name") as! String
        ageTF.text = def.value(forKey: "age") as! String
    }
    
    
}

