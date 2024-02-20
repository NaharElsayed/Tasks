//
//  ThirdViewController.swift
//  TaskVideo8
//
//  Created by Nahar Elsayed on 12/10/2023.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var nmeTf: UITextField!
    let def = UserDefaults.standard
  
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func loginBTN(_ sender: Any) {
        var name = def.value(forKey: "name")
        var img = def.value(forKey: "image")
        if (nmeTf.text! == name as! String) {
            let SV = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            SV.str = nmeTf.text!
            SV.image = img as! String
            navigationController?.pushViewController(SV, animated: true)
        }else{
            let alert = UIAlertController(title: "wrong data", message: nil, preferredStyle: .alert)
            let okBTN = UIAlertAction(title: "Ok", style: .destructive) { action in
                self.nmeTf.text = ""
            }
            alert.addAction(okBTN)
            self.present(alert, animated: true)
        }
        
    }
    
}
