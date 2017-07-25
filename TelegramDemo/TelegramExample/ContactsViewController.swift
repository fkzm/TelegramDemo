//
//  ContactsViewController.swift
//  TelegramExample
//
//  Created by Fateme' Kazemi on 4/20/1396 AP.
//  Copyright © 1396 Fateme' Kazemi. All rights reserved.
//

import UIKit

class ContactsViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{

 
    @IBOutlet weak var tableView: UITableView!
    let array:[String]=["Fateme","Ehsan","Hamed"]
    let picArray=[#imageLiteral(resourceName: "fateme"),#imageLiteral(resourceName: "ehsan"),#imageLiteral(resourceName: "hamed")]
    var i=0
    var tempContact:String!
    override func viewDidLoad() {
        super.viewDidLoad()
         initTableview()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        self.tableView.reloadData()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "reuseContacts", for: indexPath) as!ContactsTableViewCell
        
        let row = indexPath.row
       cell.lbContact.text=array[row]
        cell.imgContac.image=picArray[row]
      return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier=="contactSegue")
        {
            (segue.destination as! HamedViewController).title = self.tempContact

        }
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
        let row=indexPath.row
        
        self.tempContact=array[row]
        self.performSegue(withIdentifier: "contactSegue", sender: "")
        }
    
    private func initTableview(){
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.tableFooterView = UIView()
    
    }

   

}
