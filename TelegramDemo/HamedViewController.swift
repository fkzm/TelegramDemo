//
//  HamedViewController.swift
//  TelegramExample
//
//  Created by Fateme' Kazemi on 4/20/1396 AP.
//  Copyright © 1396 Fateme' Kazemi. All rights reserved.
//

import UIKit

class HamedViewController: UIViewController {

 
    @IBOutlet weak var img: UIImageView!
    var contactImage:UIImage?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.img.image=contactImage
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }
    

 

}
