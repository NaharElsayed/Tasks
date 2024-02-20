//
//  ViewController.swift
//  TaskVideo8
//
//  Created by Nahar Elsayed on 12/10/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var showName: UILabel!
    
    
    @IBOutlet weak var myimage: UIImageView!
    var str = ""
    var image = ""
    override func viewDidLoad() {
      
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        showName.text = str
        myimage.image = UIImage(named: "\(image)")
    }

}

