//
//  ViewController.swift
//  JsonProject
//
//  Created by Nahar Elsayed on 15/10/2023.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
   
    

    @IBOutlet weak var tableview: UITableView!
    var networkindicator : UIActivityIndicatorView!//اعرفها فوق علشان الكل يشوقفها 
    var userarray : [Users] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
       networkindicator = UIActivityIndicatorView(style: .large)
        networkindicator.center = view.center // لشان اخليها في نص الشاشه الاساسيه
        networkindicator.color = .red
        networkindicator.startAnimating()// لتشغيلها
        view.addSubview(networkindicator) // لاضافتها علي الاسكرين
         
       
        // Do any additional setup after loading the view.
    }
    func getData(){
        let url = URL(string: "https://dummyjson.com/users")
        let req = URLRequest(url: url!)
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: req)  { data, response, error in
            do{
                let json = try JSONSerialization.jsonObject(with: data!) as! Dictionary<String,Any>
                let array = json["users"] as! Array<Dictionary<String,Any>>
                for user in array {
                    let users = Users( firstName: user["firstName"] as! String, lastName: user["lastName"] as! String , gender: user["gender"] as! String)
                    
                    self.userarray.append(users)
                    
                   
                }
                
                
            }catch{
                print("error")
            }
            DispatchQueue.main.async {
                self.tableview.reloadData()
                self.networkindicator.stopAnimating()//اوقفها اما الداتا توصل
            }
            
        }
        task.resume()
    }
    
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        userarray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell" ,for: indexPath)
        cell.textLabel?.text = userarray[indexPath.row].firstName
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let SV = storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        SV.name = userarray[indexPath.row].lastName
        SV.gender = userarray[indexPath.row].gender
        navigationController?.pushViewController(SV, animated: true)
    }
    @IBAction func ReturnData(_ sender: Any) {
        getData()
      
            }
  
}

