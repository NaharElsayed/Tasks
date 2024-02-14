//
//  ViewController.swift
//  TableView2Video7
//
//  Created by Nahar Elsayed on 11/10/2023.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate , UITableViewDataSource {
  
    @IBOutlet weak var myTable: UITableView!
    @IBOutlet weak var ageTF: UITextField!
    @IBOutlet weak var nameTF: UITextField!
    
    @IBOutlet weak var emailTF: UITextField!
    var users : [Users] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        myTable.delegate = self
        myTable.dataSource = self
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = users[indexPath.row].name
        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int {
       return 1
        
    }
    @IBAction func addBTN(_ sender: Any) {
        let user1 = Users(name: nameTF.text!, age: ageTF.text!, email: emailTF.text!)
        users.append(user1)
        myTable.reloadData()
        nameTF.text = ""
        ageTF.text = ""
        emailTF.text = ""

        
    }
}

