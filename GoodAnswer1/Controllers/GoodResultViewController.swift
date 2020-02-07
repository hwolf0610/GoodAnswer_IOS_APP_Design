//
//  GoodResultViewController.swift
//  GoodAnswer1
//
//  Created by Admin on 2/2/20.
//  Copyright © 2020 HWolf. All rights reserved.
//

import UIKit

class GoodResultViewController: UIViewController {

    @IBOutlet weak var btnPlayAgain: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        btnPlayAgain.layer.cornerRadius = 20
        btnPlayAgain.layer.borderColor = UIColor.systemYellow.cgColor
        btnPlayAgain.layer.borderWidth = 3
        // Do any additional setup after loading the view.
    }
    @IBAction func playAgain(_ sender: Any) {
//        self.navigationController!.viewControllers.removeAll()
        
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SelectCategoryViewController") as? SelectCategoryViewController
        self.navigationController?.pushViewController(vc!, animated: true)
        
        
    }
    


}
