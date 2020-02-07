//
//  WelcomeViewController.swift
//  GoodAnswer1
//
//  Created by Admin on 2/1/20.
//  Copyright © 2020 HWolf. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var btnStart: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        GlobalData.selectedCategory = "Welcome"
        btnStart.layer.cornerRadius = 20
        btnStart.layer.borderWidth = 3
        btnStart.layer.borderColor = UIColor.systemYellow.cgColor
      
    }
    
    @IBAction func GoSelectCategory(_ sender: Any) {
    let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SelectCategoryViewController") as? SelectCategoryViewController
    self.navigationController?.pushViewController(vc!, animated: true)
        print("Hello, World!")
    }
    
    
}
