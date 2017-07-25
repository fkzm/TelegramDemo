//
//  ChatsViewController.swift
//  TelegramExample
//
//  Created by Fateme' Kazemi on 4/20/1396 AP.
//  Copyright © 1396 Fateme' Kazemi. All rights reserved.
//


import UIKit
//import Material
import Foundation

class ChatsViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
       initTableview()
        // Do any additional setup after loading the view.
    }
    let array:[String]=["HI","Chetori?"]
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "reuseChats", for: indexPath) as!ChatsTableViewCell
        
        let row = indexPath.row
        cell.lbChat.text=array[row]
        
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
