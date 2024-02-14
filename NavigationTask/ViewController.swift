//
//  ViewController.swift
//  NavigationTask
//
//  Created by Nahar Elsayed on 14/02/2024.
//

import UIKit


protocol myprotocol{
    func clear()
}

class ViewController: UIViewController , myprotocol {
    func clear() {
        nameTF.text = ""
        ageTF.text = ""
    }
    

    @IBOutlet weak var ageTF: UITextField!
    @IBOutlet weak var nameTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func gotoSV(_ sender: Any) {
        var SV = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        SV.name = nameTF.text!
        SV.age = ageTF.text!
        
        SV.p = self
        
        navigationController?.pushViewController(SV, animated: true)
    }
    
}

