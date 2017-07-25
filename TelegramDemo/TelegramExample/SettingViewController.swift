//
//  SettingViewController.swift
//  TelegramExample
//
//  Created by Fateme' Kazemi on 4/20/1396 AP.
//  Copyright © 1396 Fateme' Kazemi. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    let array:[String]=["Notifications","Privacy & Policy","Data & Storage", "Recent Calls" , "Stickers"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
         initTableview()    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    private func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "reuseSetting", for: indexPath) as!SettingTableViewCell
        
        let row = indexPath.row
        cell.lbSetting.text=array[row]
        return cell
    }
    
   
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
        let row=indexPath.row
        
        
        switch (row){
        case 0:
            
            
            break
        case 1:
            
            
            
            break;
        case 2:
            
            
            
            break
            
        default:
            break
            
        }
    }
    
    private func initTableview(){
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.tableFooterView = UIView()
       // self.tableView.register(UINib(nibName:ConstantHelper.nibNameAboutCell, bundle: nil), forCellReuseIdentifier: ConstantHelper.reuseAboutCell)
   }
    


   
}
