//
//  SecondViewController.swift
//  NavigationTask
//
//  Created by Nahar Elsayed on 14/02/2024.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var namrLBL: UILabel!
    
    @IBOutlet weak var ageLBL: UILabel!
    var name : String = ""
    var age : String = ""
    var p : myprotocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        namrLBL.text = "Hello \(name)"
        ageLBL.text = "Age is  \(age)"
    }
    

    @IBAction func backBTN(_ sender: Any) {
        p?.clear()
        navigationController?.popViewController(animated: true)
    }
    

}
