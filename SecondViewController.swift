//
//  SecondViewController.swift
//  JsonProject
//
//  Created by Nahar Elsayed on 15/10/2023.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var namelabel: UILabel!
    var name : String = ""
    @IBOutlet weak var genderlabel: UILabel!
    var gender : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        namelabel.text = name
        genderlabel.text = gender
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
